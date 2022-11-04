import '/all_imports.dart';

enum WhereToGoFromAICommunicatieMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_mondelinge_communicatie,
  // ignore: constant_identifier_names
  ai_mondelinge_communicatie,
  // ignore: constant_identifier_names
  ai_communicatiemiddelen,
  // ignore: constant_identifier_names
  ai_communicatiesysteem,
  // ignore: constant_identifier_names
  ai_ketenpartners
}

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
                        buttontext: 'Communicatiemiddelen - Basis',
                        destination: 'ai_communicatiemiddelen',
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
    return PopupMenuButton<WhereToGoFromAICommunicatieMain>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromAICommunicatieMain result) async {
        if (result == WhereToGoFromAICommunicatieMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromAICommunicatieMain.ww_mondelinge_communicatie) {
          await Navigator.pushNamed(
            context,
            'ww_mondelinge_communicatie',
          );
        } else if (result ==
            WhereToGoFromAICommunicatieMain.ai_mondelinge_communicatie) {
          await Navigator.pushNamed(
            context,
            'ai_mondelinge_communicatie',
          );
        } else if (result ==
            WhereToGoFromAICommunicatieMain.ai_communicatiemiddelen) {
          await Navigator.pushNamed(context, 'ai_communicatiemiddelen');
        } else if (result ==
            WhereToGoFromAICommunicatieMain.ai_communicatiesysteem) {
          await Navigator.pushNamed(context, 'ai_communicatiesysteem');
        } else if (result == WhereToGoFromAICommunicatieMain.ai_ketenpartners) {
          await Navigator.pushNamed(context, 'ai_ketenpartners');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromAICommunicatieMain>>[
        const PopupMenuItem<WhereToGoFromAICommunicatieMain>(
          value: WhereToGoFromAICommunicatieMain.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAICommunicatieMain>(
          value: WhereToGoFromAICommunicatieMain.ww_mondelinge_communicatie,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Mondelinge Communicatie',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAICommunicatieMain>(
          value: WhereToGoFromAICommunicatieMain.ai_mondelinge_communicatie,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Mondelinge Communicatie',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAICommunicatieMain>(
          value: WhereToGoFromAICommunicatieMain.ai_communicatiemiddelen,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Communicatiemiddelen',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAICommunicatieMain>(
          value: WhereToGoFromAICommunicatieMain.ai_communicatiesysteem,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Communicatiesysteem',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAICommunicatieMain>(
          value: WhereToGoFromAICommunicatieMain.ai_ketenpartners,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Ketenpartners',
          ),
        ),
      ],
    );
  }
}