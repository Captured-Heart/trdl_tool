import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIInfraMain { home_screen, ww_infrastructuur_main, }

class AIInfraMain extends StatelessWidget {
  const AIInfraMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWUitvoerenPlanMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWUitvoerenPlanMain result) {
              if (result == WhereToGoFromWWUitvoerenPlanMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWUitvoerenPlanMain.ww_infrastructuur_main) {
                Navigator.pushNamed(context, 'ww_infrastructuur_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWUitvoerenPlanMain>>[
              PopupMenuItem<WhereToGoFromWWUitvoerenPlanMain>(
                value: WhereToGoFromWWUitvoerenPlanMain.home_screen,
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
              PopupMenuItem<WhereToGoFromWWUitvoerenPlanMain>(
                value: WhereToGoFromWWUitvoerenPlanMain.ww_infrastructuur_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('WW Infra'),
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
                        title: 'Infra',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/incidenten/infra_incidenten_main.jpg',
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
                    children: [
                      const TitleText(
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavButton(
                            buttontext: 'Wissels',
                            destination: 'ai_wissels_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Overwegen',
                            destination: 'ai_overwegen_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Beveiliging',
                            destination: 'ai_beveiliging_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Bovenleiding',
                            destination: 'ai_bovenleiding_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Spoor',
                            destination: 'ai_spoor_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Kunstwerken',
                            destination: 'ai_kunstwerken',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Sectie',
                            destination: 'ai_sectie_main',
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
