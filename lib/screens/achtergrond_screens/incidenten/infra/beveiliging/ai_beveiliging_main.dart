import '/all_imports.dart';

class AIBeveiligingMain extends StatelessWidget {
  const AIBeveiligingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIBeveiligingMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <Widget>[
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
                        buttontext: 'Seinen - Basis 2',
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
            ],
          ),
        ),
      ),
    );
  }
}

class AIBeveiligingMainNavigation extends StatelessWidget {
  const AIBeveiligingMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_beveiliging_main) {
          await Navigator.pushNamed(context, 'ww_beveiliging_main');
        } else if (result == PopupNavigation.ai_seinen_basis1) {
          await Navigator.pushNamed(context, 'ai_seinen_basis1');
        } else if (result == PopupNavigation.ai_seinen_basis2) {
          await Navigator.pushNamed(context, 'ai_seinen_basis2');
        } else if (result == PopupNavigation.ai_detectie_basis) {
          await Navigator.pushNamed(context, 'ai_detectie_basis');
        } else if (result == PopupNavigation.ai_beveiliging_basis1) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis1');
        } else if (result == PopupNavigation.ai_beveiliging_basis2) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis2');
        } else if (result == PopupNavigation.ai_tegen_rijrichting) {
          await Navigator.pushNamed(context, 'ai_tegen_rijrichting');
        } else if (result == PopupNavigation.ai_veiligheidsstoring_sein) {
          await Navigator.pushNamed(
            context,
            'ai_veiligheidsstoring_sein',
          );
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
          value: PopupNavigation.ww_beveiliging_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'WW Beveiliging',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_seinen_basis1,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Seinen Basis 1',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_seinen_basis2,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Seinen Basis 2',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_detectie_basis,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Detectie',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_beveiliging_basis1,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Beveiliging Basis 1',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_beveiliging_basis2,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Beveiliging Basis 2',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_tegen_rijrichting,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Tegen Rijrichting',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_veiligheidsstoring_sein,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Veiligheidsstoring Sein',
          ),
        ),
      ],
    );
  }
}