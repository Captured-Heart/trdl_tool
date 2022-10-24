import '/all_imports.dart';

enum WhereToGoFromAIBeveiligingMain {
  home_screen,
  ww_beveiliging_main,
  ai_seinen_basis1,
  ai_seinen_basis2,
  ai_detectie_basis,
  ai_beveiliging_basis1,
  ai_beveiliging_basis2,
  ai_tegen_rijrichting,
  ai_veiligheidsstoring_sein,
}

class AIBeveiligingMain extends StatelessWidget {
  const AIBeveiligingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Beveiliging',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIBeveiligingMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIBeveiligingMain result) async {
              if (result == WhereToGoFromAIBeveiligingMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIBeveiligingMain.ww_beveiliging_main) {
                await Navigator.pushNamed(context, 'ww_beveiliging_main');
              } else if (result ==
                  WhereToGoFromAIBeveiligingMain.ai_seinen_basis1) {
                await Navigator.pushNamed(context, 'ai_seinen_basis1');
              } else if (result ==
                  WhereToGoFromAIBeveiligingMain.ai_seinen_basis2) {
                await Navigator.pushNamed(context, 'ai_seinen_basis2');
              } else if (result ==
                  WhereToGoFromAIBeveiligingMain.ai_detectie_basis) {
                await Navigator.pushNamed(context, 'ai_detectie_basis');
              } else if (result ==
                  WhereToGoFromAIBeveiligingMain.ai_beveiliging_basis1) {
                await Navigator.pushNamed(context, 'ai_beveiliging_basis1');
              } else if (result ==
                  WhereToGoFromAIBeveiligingMain.ai_beveiliging_basis2) {
                await Navigator.pushNamed(context, 'ai_beveiliging_basis2');
              } else if (result ==
                  WhereToGoFromAIBeveiligingMain.ai_tegen_rijrichting) {
                await Navigator.pushNamed(context, 'ai_tegen_rijrichting');
              } else if (result ==
                  WhereToGoFromAIBeveiligingMain.ai_veiligheidsstoring_sein) {
                await Navigator.pushNamed(
                    context, 'ai_veiligheidsstoring_sein');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIBeveiligingMain>>[
              const PopupMenuItem<WhereToGoFromAIBeveiligingMain>(
                value: WhereToGoFromAIBeveiligingMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBeveiligingMain>(
                value: WhereToGoFromAIBeveiligingMain.ww_beveiliging_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'WW Beveiliging',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBeveiligingMain>(
                value: WhereToGoFromAIBeveiligingMain.ai_seinen_basis1,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Seinen Basis 1',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBeveiligingMain>(
                value: WhereToGoFromAIBeveiligingMain.ai_seinen_basis2,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Seinen Basis 2',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBeveiligingMain>(
                value: WhereToGoFromAIBeveiligingMain.ai_detectie_basis,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Detectie',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBeveiligingMain>(
                value: WhereToGoFromAIBeveiligingMain.ai_beveiliging_basis1,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Beveiliging Basis 1',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBeveiligingMain>(
                value: WhereToGoFromAIBeveiligingMain.ai_beveiliging_basis2,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Beveiliging Basis 2',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBeveiligingMain>(
                value: WhereToGoFromAIBeveiligingMain.ai_tegen_rijrichting,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Tegen Rijrichting',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBeveiligingMain>(
                value:
                    WhereToGoFromAIBeveiligingMain.ai_veiligheidsstoring_sein,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Veiligheidsstoring Sein',
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
              /*PROCEDURE CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const <Widget>[
                      TitleText(
                        title: 'Beveiliging',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/incidenten/beveiliging_achtergrond_main.jpg',
                      ),
                      SizedBoxH(),
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
                            buttontext: 'Werkwijze - Beveiliging',
                            destination: 'ww_beveiliging_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Seinen - Basis 1',
                            destination: 'ai_seinen_basis1',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Seinen - Basis 1',
                            destination: 'ai_seinen_basis2',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Detectie - Basis',
                            destination: 'ai_detectie_basis',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Beveiliging - Basis 1',
                            destination: 'ai_beveiliging_basis1',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Beveiliging - Basis 2',
                            destination: 'ai_beveiliging_basis2',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Tegen de rijrichting',
                            destination: 'ai_tegen_rijrichting',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Veiligheidsstoring sein',
                            destination: 'ai_veiligheidsstoring_sein',
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
      ),
    );
  }
}
