import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIUitvoerenPlanMain {
  home_screen,
  ww_uitvoeren_plan_main,
  ai_rijwegen_ari,
}

class AIUitvoerenPlanMain extends StatelessWidget {
  const AIUitvoerenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIUitvoerenPlanMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIUitvoerenPlanMain result) {
              if (result == WhereToGoFromAIUitvoerenPlanMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIUitvoerenPlanMain.ww_uitvoeren_plan_main) {
                Navigator.pushNamed(context, 'ww_uitvoeren_plan_main');
              } else if (result ==
                  WhereToGoFromAIUitvoerenPlanMain.ai_rijwegen_ari) {
                Navigator.pushNamed(context, 'ai_rijwegen_ari');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIUitvoerenPlanMain>>[
              PopupMenuItem<WhereToGoFromAIUitvoerenPlanMain>(
                value: WhereToGoFromAIUitvoerenPlanMain.home_screen,
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
              PopupMenuItem<WhereToGoFromAIUitvoerenPlanMain>(
                value: WhereToGoFromAIUitvoerenPlanMain.ww_uitvoeren_plan_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.train,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('WW Uitvoeren Plan'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAIUitvoerenPlanMain>(
                value: WhereToGoFromAIUitvoerenPlanMain.ai_rijwegen_ari,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Rijwegen ARI'),
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
            /*TITLE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    TitleText(
                      title: 'Uitvoeren Plan',
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
                          buttontext: 'Uitvoeren plan - basis',
                          destination: 'ai_uitvoeren_plan',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Geplande werkzaamheden',
                          destination: 'ai_geplande_werkzaamheden_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzonderheden trein',
                          destination: 'ai_bijzonderheden_trein_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzonderheden rijwegen',
                          destination: 'ai_bijzonderheden_rijwegen_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Communicatie',
                          destination: 'ai_communicatie_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'NCBG',
                          destination: 'ai_ncbg',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Dienstovergave',
                          destination: 'ai_dienstovergave',
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
                          'assets/images/achtergrond_info/uitvoeren_plan/spoorKaart2020.jpg',
                    ),
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
