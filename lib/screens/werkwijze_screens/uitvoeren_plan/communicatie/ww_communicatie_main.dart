import '/all_imports.dart';

class WWCommunicatieMain extends StatelessWidget {
  const WWCommunicatieMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWCommunicatieNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              /*PROCEDURE CARD*/
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
                    children: const <NavButton>[
                      NavButton(
                        buttontext: 'Mondelinge Communicatie',
                        destination: 'ww_mondelinge_communicatie',
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

class WWCommunicatieNavigation extends StatelessWidget {
  const WWCommunicatieNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_communicatie_main) {
          await Navigator.pushNamed(context, 'ai_communicatie_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_communicatie_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Communicatie',
          ),
        ),
      ],
    );
  }
}
