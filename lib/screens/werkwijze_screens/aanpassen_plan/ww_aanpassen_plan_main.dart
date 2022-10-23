import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWAanpassenPlanMain {
  home_screen,
  ai_aanpassen_plan,
}

class WWAanpassenPlanMain extends StatelessWidget {
  const WWAanpassenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWAanpassenPlanMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWAanpassenPlanMain result) async {
              if (result == WhereToGoFromWWAanpassenPlanMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWAanpassenPlanMain.ai_aanpassen_plan) {
                await Navigator.pushNamed(context, 'ai_aanpassen_plan_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWAanpassenPlanMain>>[
              const PopupMenuItem<WhereToGoFromWWAanpassenPlanMain>(
                value: WhereToGoFromWWAanpassenPlanMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWAanpassenPlanMain>(
                value: WhereToGoFromWWAanpassenPlanMain.ai_aanpassen_plan,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Aanpassen Plan',
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
                      title: 'Aanpassen Plan',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Het actuele plan aanpassen als gevolg van een incident of extra capaciteitsaanvraag.',
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
                          buttontext: 'Stappenplan Versperringen',
                          destination: 'ww_stappenplan_versperringen',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Incidenten',
                          destination: 'ww_incidenten_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Ongepland Werk',
                          destination: 'ww_ongepland_werk_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Vertragingen',
                          destination: 'ww_vertragingen',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Orderacceptatie',
                          destination: 'ww_orderacceptatie',
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