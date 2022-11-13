import '/all_imports.dart';

class AIUitvoerenPlanMain extends StatelessWidget {
  const AIUitvoerenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIUitvoerenPlanMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <TitleText>[
                  TitleText(
                    title: 'Uitvoeren Plan',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  const TitleText(
                    title: 'Ga snel naar',
                  ),
                  const SizedBoxH(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      NavButton(
                        buttontext: 'Uitvoeren plan - Werkwijze',
                        destination: 'ai_uitvoeren_plan',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Uitvoeren plan - basis',
                        destination: 'ai_uitvoeren_plan',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Geplande Werkzaamheden',
                        destination: 'ai_geplande_werkzaamheden_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Bijzonderheden Trein',
                        destination: 'ai_bijzonderheden_trein_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Bijzonderheden Rijwegen',
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
              const TextCard(
                widgetList: <Widget>[
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/spoorKaart2020.jpg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIUitvoerenPlanMainNavigation extends StatelessWidget {
  const AIUitvoerenPlanMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_uitvoeren_plan_main) {
          await Navigator.pushNamed(context, 'ww_uitvoeren_plan_main');
        } else if (result == PopupNavigation.ai_rijwegen_ari) {
          await Navigator.pushNamed(context, 'ai_rijwegen_ari');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_uitvoeren_plan_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Uitvoeren Plan',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_rijwegen_ari,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Rijwegen ARI',
          ),
        ),
      ],
    );
  }
}
