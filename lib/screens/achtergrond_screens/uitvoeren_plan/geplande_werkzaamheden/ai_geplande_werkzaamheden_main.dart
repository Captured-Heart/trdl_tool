import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIGeplandeWerkzaamhedenMain {
  home_screen,
  ww_geplande_werkzaamheden_main,
}

class AIGeplandeWerkzaamhedenMain extends StatelessWidget {
  const AIGeplandeWerkzaamhedenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIGeplandeWerkzaamhedenMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIGeplandeWerkzaamhedenMain result) {
              if (result ==
                  WhereToGoFromAIGeplandeWerkzaamhedenMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIGeplandeWerkzaamhedenMain
                      .ww_geplande_werkzaamheden_main) {
                Navigator.pushNamed(context, 'ww_geplande_werkzaamheden_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIGeplandeWerkzaamhedenMain>>[
              PopupMenuItem<WhereToGoFromAIGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromAIGeplandeWerkzaamhedenMain.home_screen,
                child: MenuItemContent(icon: Icons.home, text: 'Home',),
              ),
              PopupMenuItem<WhereToGoFromAIGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromAIGeplandeWerkzaamhedenMain
                    .ww_geplande_werkzaamheden_main,
                child: MenuItemContent(icon: Icons.train, text: 'WW Geplande Werkzaamheden',),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    TitleText(
                      title: 'Geplande Werkzaamheden',
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
                          buttontext: 'Geplande werkzaamheden - Basis',
                          destination: 'ai_geplande_werkzaamheden',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Controleren WBI',
                          destination: 'ai_controleren_wbi',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Fouten in de WBI',
                          destination: 'ai_fouten_wbi',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Aanvang werkzaamheden',
                          destination: 'ai_aanvang_werkzaamheden',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Toelaten werktreinen',
                          destination: 'ai_toelaten_werktreinen',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Werkzones',
                          destination: 'ai_werkzones',
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
                          'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzaamhedenBovenleiding.jpg',
                    ),
                    SizedBoxH(),
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
