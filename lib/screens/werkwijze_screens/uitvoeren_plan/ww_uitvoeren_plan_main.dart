import '/all_imports.dart';

class WWUitvoerenPlanMain extends StatelessWidget {
  const WWUitvoerenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWUitvoerenPlanMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              /*PROCEDURE CARD*/
              const TextCard(
                widgetList: <Widget>[
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
              /*NAVIGATION CARD*/
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
            ],
          ),
        ),
      ),
    );
  }
}

class WWUitvoerenPlanMainNavigation extends StatelessWidget {
  const WWUitvoerenPlanMainNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_uitvoeren_plan_main) {
          await Navigator.pushNamed(context, 'ai_uitvoeren_plan_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: Utils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_uitvoeren_plan_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Uitvoeren Plan',
          ),
        ),
      ],
    );
  }
}
