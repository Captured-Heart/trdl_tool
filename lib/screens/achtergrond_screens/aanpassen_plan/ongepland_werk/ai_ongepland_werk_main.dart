import '/all_imports.dart';

enum WhereToGoFromAIOngeplandWerkMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
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
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIOngeplandWerkMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIOngeplandWerkMain result) async {
              if (result == WhereToGoFromAIOngeplandWerkMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIOngeplandWerkMain.ww_ongepland_werk) {
                await Navigator.pushNamed(context, 'ww_ongepland_werk');
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
            children: <Card>[
              /*TITLE CARD*/
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
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
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
                    children: const <Widget>[
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
