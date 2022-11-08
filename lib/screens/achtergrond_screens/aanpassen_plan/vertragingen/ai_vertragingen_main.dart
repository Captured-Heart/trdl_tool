import '/all_imports.dart';

class AIVertragingenMain extends StatelessWidget {
  const AIVertragingenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIVertragingenMainNavigation(),
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
                    title: 'Vertragingen',
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
                        buttontext: 'Vertragingen Basis',
                        destination: 'ai_vertragingen_basis',
                      ),
                      NavButton(
                        buttontext: 'Vertragingen - Werkwijze',
                        destination: 'ww_vertragingen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Monitoring',
                        destination: 'ai_monitoring',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Klanthinder',
                        destination: 'ai_klanthinder',
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

class AIVertragingenMainNavigation extends StatelessWidget {
  const AIVertragingenMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_vertragingen) {
          await Navigator.pushNamed(context, 'ww_vertragingen');
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
          value: PopupNavigation.ww_vertragingen,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Vertragingen',
          ),
        ),
      ],
    );
  }
}