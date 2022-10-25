import '/all_imports.dart';

enum WhereToGoFromWWGevaarlijkeStoffen1 {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_ruclu,
  // ignore: constant_identifier_names
  ai_gevaarlijke_stoffen,
}

class WWGevaarlijkeStoffen1 extends StatelessWidget {
  const WWGevaarlijkeStoffen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWGevaarlijkeStoffen1>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWGevaarlijkeStoffen1 result) async {
              if (result == WhereToGoFromWWGevaarlijkeStoffen1.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWGevaarlijkeStoffen1.ai_ruclu) {
                await Navigator.pushNamed(context, 'ai_ruclu');
              } else if (result ==
                  WhereToGoFromWWGevaarlijkeStoffen1.ai_gevaarlijke_stoffen) {
                await Navigator.pushNamed(context, 'ai_gevaarlijke_stoffen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWGevaarlijkeStoffen1>>[
              const PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen1>(
                value: WhereToGoFromWWGevaarlijkeStoffen1.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen1>(
                value: WhereToGoFromWWGevaarlijkeStoffen1.ai_ruclu,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Procedure RU/CLU',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen1>(
                value:
                    WhereToGoFromWWGevaarlijkeStoffen1.ai_gevaarlijke_stoffen,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Gevaarlijke Stoffen',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <TitleText>[
                    TitleText(
                      title: 'Gevaarlijke stoffen en milieu',
                    ),
                  ],
                ),
              ),
            ),
            /*NAVIGATION CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: <Widget>[
                    const TitleText(
                      title: 'Ga snel naar',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        NavButton(
                          buttontext: 'Gevaarlijke stoffen',
                          destination: 'ww_gevaarlijke_stoffen2',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Meldingen omtrent milieu',
                          destination: 'ww_milieumeldingen',
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
