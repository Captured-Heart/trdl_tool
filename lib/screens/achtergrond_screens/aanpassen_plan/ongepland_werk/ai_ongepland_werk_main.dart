import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIOngeplandWerkMain {
  home_screen,
  ww_ongepland_werk,
}

class AIOngeplandWerkMain extends StatelessWidget {
  const AIOngeplandWerkMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIOngeplandWerkMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIOngeplandWerkMain result) {
              if (result == WhereToGoFromAIOngeplandWerkMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIOngeplandWerkMain.ww_ongepland_werk) {
                Navigator.pushNamed(context, 'ww_ongepland_werk');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIOngeplandWerkMain>>[
              const PopupMenuItem<WhereToGoFromAIOngeplandWerkMain>(
                value: WhereToGoFromAIOngeplandWerkMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIOngeplandWerkMain>(
                value: WhereToGoFromAIOngeplandWerkMain.ww_ongepland_werk,
                child: MenuItemContent(
                  icon: Icons.train,
                  text: 'WW Ongepland Werk',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*TITLE CARD*/
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
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavButton(
                            buttontext: 'Ongepland werk - Infra',
                            destination: 'ai_ongepland_werk_infra',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Ongepland werk - Materieel',
                            destination: 'ai_ongepland_werk_materieel',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Infra ter beschikking stellen',
                            destination: 'ai_infra_ter_beschikking',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Toelaten werktreinen',
                            destination: 'ai_toelaten_werktreinen',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Inzetten railvoertuig (ICB)',
                            destination: 'ai_inzetten_railvoertuig',
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*IMAGE CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/ongepland_werk_main.png',
                      ),
                      SizedBoxH(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
