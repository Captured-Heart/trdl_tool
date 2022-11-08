import '/all_imports.dart';

class ChatUtils {
  static const TextStyle kSendButtonTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 28.0,
  );

  static const InputDecoration kMessageTextFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 20.0,
    ),
    hintText: 'Typ hier je bericht...',
  );
}