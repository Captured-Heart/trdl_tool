import '/all_imports.dart';

enum WhereToGoFromWWKunstwerkenMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_kunstwerken_main,
  // ignore: constant_identifier_names
  ai_infra_main,
}

class WWKunstwerkenMain extends StatelessWidget {
  const WWKunstwerkenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWKunstwerkenMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWKunstwerkenMain result) async {
              if (result == WhereToGoFromWWKunstwerkenMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWKunstwerkenMain.ai_kunstwerken_main) {
                await Navigator.pushNamed(context, 'ai_kunstwerken_main');
              } else if (result ==
                  WhereToGoFromWWKunstwerkenMain.ai_infra_main) {
                await Navigator.pushNamed(context, 'ai_infra_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWKunstwerkenMain>>[
              const PopupMenuItem<WhereToGoFromWWKunstwerkenMain>(
                value: WhereToGoFromWWKunstwerkenMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWKunstwerkenMain>(
                value: WhereToGoFromWWKunstwerkenMain.ai_kunstwerken_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Kunstwerken',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWKunstwerkenMain>(
                value: WhereToGoFromWWKunstwerkenMain.ai_infra_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Infra',
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
                      title: 'Kunstwerken',
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
                          buttontext: 'Aanrijding viaduct',
                          destination: 'ww_aanrijding_viaduct',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Storing brug',
                          destination: 'ww_storing_brug',
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
