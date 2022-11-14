import '/all_imports.dart';

class AICommunicatieMain extends StatelessWidget {
  const AICommunicatieMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AICommunicatieMainNavigation(),
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
                    title: 'Communicatie',
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
                        buttontext: 'Communicatie - Werkwijze',
                        destination: 'ww_communicatie_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Mondelinge (veiligheids)communicatie',
                        destination: 'ai_mondelinge_communicatie',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Communicatiemiddelen - Nieuw',
                        destination: 'ai_communicatiemiddelen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Communicatiemiddelen - Oud',
                        destination: 'ai_communicatiemiddelen_oud',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Communicatiesysteem GSM-R - Basis',
                        destination: 'ai_communicatiesysteem',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Externe ketenpartners',
                        destination: 'ai_ketenpartners',
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
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_main.jpg',
                  ),
                  SizedBoxH(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AICommunicatieMainNavigation extends StatelessWidget {
  const AICommunicatieMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_mondelinge_communicatie) {
          await Navigator.pushNamed(
            context,
            'ww_mondelinge_communicatie',
          );
        } else if (result == PopupNavigation.ai_mondelinge_communicatie) {
          await Navigator.pushNamed(
            context,
            'ai_mondelinge_communicatie',
          );
        } else if (result == PopupNavigation.ai_communicatiemiddelen) {
          await Navigator.pushNamed(context, 'ai_communicatiemiddelen');
        } else if (result == PopupNavigation.ai_communicatiesysteem) {
          await Navigator.pushNamed(context, 'ai_communicatiesysteem');
        } else if (result == PopupNavigation.ai_ketenpartners) {
          await Navigator.pushNamed(context, 'ai_ketenpartners');
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
          value: PopupNavigation.ww_mondelinge_communicatie,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Mondelinge Communicatie',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_mondelinge_communicatie,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Mondelinge Communicatie',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_communicatiemiddelen,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Communicatiemiddelen',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_communicatiesysteem,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Communicatiesysteem',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_ketenpartners,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Ketenpartners',
          ),
        ),
      ],
    );
  }
}
