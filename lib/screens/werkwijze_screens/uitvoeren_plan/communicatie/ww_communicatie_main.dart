import '/all_imports.dart';

enum WhereToGoFromWWCommunicatieMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_communicatie_main,
}

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
    return PopupMenuButton<WhereToGoFromWWCommunicatieMain>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWCommunicatieMain result) async {
        if (result == WhereToGoFromWWCommunicatieMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWCommunicatieMain.ai_communicatie_main) {
          await Navigator.pushNamed(context, 'ai_communicatie_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWCommunicatieMain>>[
        const PopupMenuItem<WhereToGoFromWWCommunicatieMain>(
          value: WhereToGoFromWWCommunicatieMain.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWCommunicatieMain>(
          value: WhereToGoFromWWCommunicatieMain.ai_communicatie_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Communicatie',
          ),
        ),
      ],
    );
  }
}