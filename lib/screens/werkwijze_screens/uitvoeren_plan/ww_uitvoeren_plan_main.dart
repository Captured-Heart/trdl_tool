import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWUitvoerenPlanMain {
  home_screen,
  ai_uitvoeren_plan_main,
}

class WWUitvoerenPlanMain extends StatelessWidget {
  const WWUitvoerenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWUitvoerenPlanMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWUitvoerenPlanMain result) {
              if (result == WhereToGoFromWWUitvoerenPlanMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWUitvoerenPlanMain.ai_uitvoeren_plan_main) {
                Navigator.pushNamed(context, 'ai_uitvoeren_plan_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWUitvoerenPlanMain>>[
              const PopupMenuItem<WhereToGoFromWWUitvoerenPlanMain>(
                value: WhereToGoFromWWUitvoerenPlanMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWUitvoerenPlanMain>(
                value: WhereToGoFromWWUitvoerenPlanMain.ai_uitvoeren_plan_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Uitvoeren Plan',
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
                      title: 'Uitvoeren Plan',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De TRDL voert het actuele plan uit en stelt infra ter beschikking volgens vooraf gemaakte afspraken.',
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
                          buttontext: 'Geplande Werkzaamheden',
                          destination: 'ww_geplande_werkzaamheden_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzonderheden Rijwegen',
                          destination: 'ww_bijzonderheden_rijwegen_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzonderheden Trein',
                          destination: 'ww_bijzonderheden_trein_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Communicatie',
                          destination: 'ww_communicatie_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'NCBG',
                          destination: 'ww_ncbg',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Dienstovergave',
                          destination: 'ww_dienstovergave',
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
