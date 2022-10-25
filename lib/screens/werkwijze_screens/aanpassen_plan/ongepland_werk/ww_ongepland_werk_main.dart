import '/all_imports.dart';

enum WhereToGoFromWWOngeplandWerkMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_ongepland_werk_main,
}

class WWOngeplandWerkMain extends StatelessWidget {
  const WWOngeplandWerkMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWOngeplandWerkMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWOngeplandWerkMain result) async {
              if (result == WhereToGoFromWWOngeplandWerkMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWOngeplandWerkMain.ai_ongepland_werk_main) {
                await Navigator.pushNamed(context, 'ai_ongepland_werk_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWOngeplandWerkMain>>[
              const PopupMenuItem<WhereToGoFromWWOngeplandWerkMain>(
                value: WhereToGoFromWWOngeplandWerkMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWOngeplandWerkMain>(
                value: WhereToGoFromWWOngeplandWerkMain.ai_ongepland_werk_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Ongepland Werk',
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
                      title: 'Ongepland Werk',
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
                      title: 'Ga snel naar:',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        NavButton(
                          buttontext: 'Materieel',
                          destination: 'ww_ongepland_werk_materieel',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Infrastructuur',
                          destination: 'ww_ongepland_werk_infra',
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
