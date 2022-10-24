import '/all_imports.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  bool fabLabelOverslaan = true;

  List<Widget> slides = items
      .map(
        (Map<String, String> item) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: <Flexible>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Image.asset(
                  /*IMAGE FROM WELCOME_ITEMS*/
                  item['image']!,
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
                        /*HEADER FROM WELCOME_ITEMS*/
                        item['header']!,
                        style: TextStyle(
                          fontSize: 50.0,
                          color: greenMoneyColorsLight.primary,
                        ),
                      ),
                      Text(
                        /*DESCRIPTION FROM WELCOME_ITEMS*/
                        item['description']!,
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
        (int index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 3.0),
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
            color: currentPage.round() == index
                /*THIS GREEN COLOR IS FROM FLEXCOLORSCHEME JUNGLE*/
                ? const Color(0xFF0D4F18)
                : const Color(0xFF0D4F18).withOpacity(0.3),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      );

  double currentPage = 0.0;
  final PageController _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          /*SKIP AND GO TO WELCOME_SCREEN*/
          await Navigator.pushNamed(
            context,
            'login_screen',
          );
        },
        label: Text(
          fabLabelOverslaan ? 'OVERSLAAN' : 'VERDER',
        ),
      ),
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: _pageViewController,
            itemCount: slides.length,
            itemBuilder: (BuildContext context, int index) {
              _pageViewController.addListener(() {
                /*SWIPE THE WELCOME_SCREEN*/
                setState(() {
                  currentPage = _pageViewController.page!;
                  if (currentPage == 3) {
                    fabLabelOverslaan = false;
                  }
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