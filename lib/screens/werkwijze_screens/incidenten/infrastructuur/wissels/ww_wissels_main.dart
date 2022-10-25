import '/all_imports.dart';

enum WhereToGoFromWWWisselsMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_wissels_main,
  // ignore: constant_identifier_names
  ai_infra_overig,
  // ignore: constant_identifier_names
  ai_incidenten_main,
}

class WWWisselsMain extends StatelessWidget {
  const WWWisselsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWWisselsMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWWisselsMain result) async {
              if (result == WhereToGoFromWWWisselsMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWWisselsMain.ai_wissels_main) {
                await Navigator.pushNamed(context, 'ai_wissels_main');
              } else if (result == WhereToGoFromWWWisselsMain.ai_infra_overig) {
                await Navigator.pushNamed(context, 'ai_infra_overig');
              } else if (result ==
                  WhereToGoFromWWWisselsMain.ai_incidenten_main) {
                await Navigator.pushNamed(context, 'ai_incidenten_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWWisselsMain>>[
              const PopupMenuItem<WhereToGoFromWWWisselsMain>(
                value: WhereToGoFromWWWisselsMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWWisselsMain>(
                value: WhereToGoFromWWWisselsMain.ai_wissels_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Wissels',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWWisselsMain>(
                value: WhereToGoFromWWWisselsMain.ai_infra_overig,
                //TODO: Pagina ai_infra_overig.dart toevoegen!
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Infra Overig',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWWisselsMain>(
                value: WhereToGoFromWWWisselsMain.ai_incidenten_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Incidenten',
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
                      title: 'Wissels',
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
                          buttontext: 'Wissel niet in eindstand',
                          destination: 'ww_wissel_eindstand',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Opengereden wissel',
                          destination: 'ww_opengereden_wissel',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Gestoord wissel',
                          destination: 'ww_gestoord_wissel',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Beschadigd wissel',
                          destination: 'ww_beschadigd_wissel',
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
