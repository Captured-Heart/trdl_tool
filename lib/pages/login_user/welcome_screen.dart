import 'package:trdl_tool/all_imports.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  final alreadySignedInUser = FirebaseAuth.instance.currentUser;

  List<Widget> slides = items
      .map(
        (item) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Image.asset(
                  /*Image comes from welcome_items.dart*/
                  item['image'],
                  fit: BoxFit.fitWidth,
                  width: 220.0,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        /*Header comes from welcome_items.dart*/
                        item['header'],
                        style: const TextStyle(
                          fontSize: 50.0,
                          color: Color(0xFF0D4F18),
                        ),
                      ),
                      Text(
                        /*Description comes from welcome_items.dart*/
                        item['description'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          letterSpacing: 1.2,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
      .toList();

  List<Widget> indicator() => List<Widget>.generate(
        slides.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 3.0),
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
            color: currentPage.round() == index
                /*This green color is taken from FlexColorScheme Jungle*/
                ? const Color(0xFF0D4F18)
                : const Color(0xFF0D4F18).withOpacity(0.3),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      );

  double currentPage = 0.0;
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Logger().wtf('User skips welcome_screen to login_screen.');
          /*Used to skip or move on from welcome_screen to login_screen*/
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Login(),
            ),
          );
        },
        label: const Text(
          Strings.welcomeFAB,
        ),
      ),
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: _pageViewController,
            itemCount: slides.length,
            itemBuilder: (BuildContext context, int index) {
              _pageViewController.addListener(() {
                /*Swiping the welcome_screen.*/
                setState(() {
                  currentPage = _pageViewController.page!;
                });
              });
              return slides[index];
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 70.0),
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicator(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
