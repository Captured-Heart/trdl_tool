import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWOngeplandWerkMain {
  home_screen,
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
        actions: [
          PopupMenuButton<WhereToGoFromWWOngeplandWerkMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWOngeplandWerkMain result) {
              if (result == WhereToGoFromWWOngeplandWerkMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWOngeplandWerkMain.ai_ongepland_werk_main) {
                Navigator.pushNamed(context, 'ai_ongepland_werk_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWOngeplandWerkMain>>[
              PopupMenuItem<WhereToGoFromWWOngeplandWerkMain>(
                value: WhereToGoFromWWOngeplandWerkMain.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWOngeplandWerkMain>(
                value: WhereToGoFromWWOngeplandWerkMain.ai_ongepland_werk_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Ongepland Werk'),
                  ],
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
                  children: [
                    const TitleText(
                      title: 'Ga snel naar:',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
