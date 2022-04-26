import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWOverigeIncidentenMain {
  home_screen,
  ai_overigeincidenten,
}

class WWOverigeIncidentenMain extends StatelessWidget {
  const WWOverigeIncidentenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWOverigeIncidentenMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWOverigeIncidentenMain result) {
              if (result == WhereToGoFromWWOverigeIncidentenMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWOverigeIncidentenMain.ai_overigeincidenten) {
                Navigator.pushNamed(context, 'ai_overigeincidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWOverigeIncidentenMain>>[
              PopupMenuItem<WhereToGoFromWWOverigeIncidentenMain>(
                value: WhereToGoFromWWOverigeIncidentenMain.home_screen,
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
              PopupMenuItem<WhereToGoFromWWOverigeIncidentenMain>(
                value:
                    WhereToGoFromWWOverigeIncidentenMain.ai_overigeincidenten,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Overige Incidenten'),
                  ],
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
              /*PROCEDURE CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Overige Incidenten',
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
                            buttontext: 'Gestrande Trein',
                            destination: 'ww_gestrande_trein',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Brand',
                            destination: 'ww_brand',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Weersomstandigheden',
                            destination: 'ww_weersomstandigheden',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Ontruimen Post',
                            destination: 'ww_ontruimen_post',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Stroomstoring',
                            destination: 'ww_stroomstoring',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Wissels vrijmaken',
                            destination: 'ww_wissels_vrijmaken',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'STS passage',
                            destination: 'ww_sts_passage',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Stilleggen treindienst',
                            destination: 'ww_stilleggen_treindienst',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Afhandelen systeemstoringen',
                            destination: 'ww_afhandelen_systeemstoringen',
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
