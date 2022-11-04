import '/all_imports.dart';

class AIOverwegenMain extends StatelessWidget {
  const AIOverwegenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Overwegen',
        ),
        actions: const <HomeButton>[
          HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: CardUtils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Overwegen',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/overwegen_achtergrond_main.png',
                    ),
                    SizedBoxH(),
                  ],
                ),
              ),
            ),
            /*NAVIGATION CARD*/
            Card(
              elevation: CardUtils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: <Widget>[
                    const TitleText(
                      title: 'Ga snel naar',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <NavButton>[
                        NavButton(
                          buttontext: 'Werkwijze - Overwegen',
                          destination: 'overwegen',
                        ),
                      ],
                    ),
                    const SizedBoxH(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}