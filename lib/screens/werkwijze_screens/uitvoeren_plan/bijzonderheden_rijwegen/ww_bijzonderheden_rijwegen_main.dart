import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWBijzonderhedenRijwegenMain {
  home_screen,
  ai_bijzonderheden_rijwegen_main,
}

class WWBijzonderhedenRijwegenMain extends StatelessWidget {
  const WWBijzonderhedenRijwegenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWBijzonderhedenRijwegenMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWBijzonderhedenRijwegenMain result) {
              if (result ==
                  WhereToGoFromWWBijzonderhedenRijwegenMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWBijzonderhedenRijwegenMain
                      .ai_bijzonderheden_rijwegen_main) {
                Navigator.pushNamed(context, 'ai_bijzonderheden_rijwegen_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWBijzonderhedenRijwegenMain>>[
              const PopupMenuItem<WhereToGoFromWWBijzonderhedenRijwegenMain>(
                value: WhereToGoFromWWBijzonderhedenRijwegenMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBijzonderhedenRijwegenMain>(
                value: WhereToGoFromWWBijzonderhedenRijwegenMain
                    .ai_bijzonderheden_rijwegen_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Bijzonderheden Rijwegen',
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
                      title: 'Bijzonderheden Rijwegen',
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
                      title: 'Ga snel naar',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        NavButton(
                          buttontext: 'Sporen buiten exploitatie',
                          destination: 'ww_rijwegen_exploitatie',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Kop van trein voorbij sein',
                          destination: 'ww_kop_van_trein_voorbij_sein',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Inzetten railvoertuig ICB',
                          destination: 'ww_inzetten_icb',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Toelaten werktreinen',
                          destination: 'ww_toelaten_werktreinen',
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
