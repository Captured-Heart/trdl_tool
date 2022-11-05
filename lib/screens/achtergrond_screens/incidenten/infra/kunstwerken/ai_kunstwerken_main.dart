import '/all_imports.dart';

class AIKunstwerkenMain extends StatelessWidget {
  const AIKunstwerkenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIKunstWerkenMainNavigation(),
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
                    title: 'Kunstwerken',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/wissels_achtergrond_main.jpg',
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
                        buttontext: 'Kunstwerken - Werkwijze',
                        destination: 'ww_kunstwerken_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Kunstwerken - basisinformatie',
                        destination: 'ai_kunstwerken_basis',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Kunstwerken - Aanrijding/Aanvaring',
                        destination: 'ai_kunstwerken_aanrijding',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Kunstwerken - Storing',
                        destination: 'ai_kunstwerken_storing',
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

class AIKunstWerkenMainNavigation extends StatelessWidget {
  const AIKunstWerkenMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_kunstwerken_main) {
          await Navigator.pushNamed(context, 'ww_kunstwerken_main');
        } else if (result == PopupNavigation.ai_kunstwerken_aanrijding) {
          await Navigator.pushNamed(context, 'ai_kunstwerken_aanrijding');
        } else if (result == PopupNavigation.ai_kunstwerken_storing) {
          await Navigator.pushNamed(context, 'ai_kunstwerken_storing');
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
          value: PopupNavigation.ww_kunstwerken_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Kunstwerken',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_kunstwerken_aanrijding,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Aanrijding/Aanvaring Kunstwerken',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_kunstwerken_storing,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Storing Kunstwerken',
          ),
        ),
      ],
    );
  }
}
