import 'package:trdl_tool/all_imports.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
late User loggedInUser;

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
  static const String id = 'chat_screen';

  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageTextController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String messageText;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final User? user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      // TODO: Controleer of deze snackbar juist toont
      ScaffoldMessenger.of(context).showSnackBar(snackBarLoginErIsIetsMis);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool Chat'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MessagesStream(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    bottom: 8.0,
                  ),
                  child: TextField(
                    controller: messageTextController,
                    onChanged: (String value) {
                      messageText = value;
                    },
                    decoration: kMessageTextFieldDecoration,
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  messageTextController.clear();
                  await _firestore.collection('messages').add({
                    'sender': loggedInUser.email,
                    'text': messageText,
                    'timestamp': FieldValue.serverTimestamp(),
                  });
                },
                child: const Text(
                  '✅',
                  style: kSendButtonTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  const MessagesStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream:
          _firestore.collection('messages').orderBy('timestamp').snapshots(),
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: greenMoneyColorsLight.primary,
            ),
          );
        }
        final Iterable<QueryDocumentSnapshot<Object?>> messages =
            snapshot.data!.docs.reversed;
        final List<MessageBubble> messageBubbles = <MessageBubble>[];
        for (final QueryDocumentSnapshot<Object?> message in messages) {
          final dynamic messageText = message.get('text');
          final dynamic messageSender = message.get('sender');
          final String? currentUser = loggedInUser.email;

          final MessageBubble messageBubble = MessageBubble(
            sender: messageSender.toString(),
            message: messageText.toString(),
            isMe: currentUser == messageSender,
          );
          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8.0,
            ),
            children: messageBubbles,
          ),
        );
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    required this.sender,
    required this.message,
    required this.isMe,
    Key? key,
  }) : super(key: key);
  final String message;
  final String sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: const TextStyle(
              fontSize: 12.0,
            ),
          ),
          Material(
            shadowColor: greenMoneyColorsLight.secondary,
            elevation: 6.0,
            borderRadius: BorderRadius.only(
              topLeft: isMe
                  ? const Radius.circular(12.0)
                  : const Radius.circular(2.0),
              topRight: isMe
                  ? const Radius.circular(2.0)
                  : const Radius.circular(12.0),
              bottomLeft: const Radius.circular(12.0),
              bottomRight: const Radius.circular(12.0),
            ),
            color: isMe
                ? greenMoneyColorsLight.primary
                : greenMoneyColorsLight.inversePrimary,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: Text(
                message,
                style: TextStyle(
                  fontSize: 16.0,
                  color: isMe
                      ? greenMoneyColorsLight.surface
                      : greenMoneyColorsLight.onSurface,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
