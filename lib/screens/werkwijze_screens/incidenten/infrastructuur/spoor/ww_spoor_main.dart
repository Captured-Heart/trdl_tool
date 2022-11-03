import '/all_imports.dart';

class WWSpoorMain extends StatelessWidget {
  const WWSpoorMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[WWSpoorMainNavigation(), HomeButton()],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <TitleText>[
                  TitleText(
                    title: 'Spoor',
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
                        buttontext: 'Glad spoor',
                        destination: 'ww_glad_spoor',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Onregelmatigheden baan',
                        destination: 'ww_onregelmatigheden_baan',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Roestvorming',
                        destination: 'ww_roestvorming',
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

class WWSpoorMainNavigation extends StatelessWidget {
  const WWSpoorMainNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_infra_main) {
          await Navigator.pushNamed(context, 'ai_infra_main');
        } else if (result == PopupNavigation.ai_spoor_main) {
          await Navigator.pushNamed(context, 'ai_spoor_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_infra_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Infra',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_spoor_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Spoor',
          ),
        ),
      ],
    );
  }
}