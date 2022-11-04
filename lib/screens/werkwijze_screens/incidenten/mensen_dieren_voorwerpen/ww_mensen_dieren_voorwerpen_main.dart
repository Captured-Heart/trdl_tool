import '/all_imports.dart';

class WWMensenDierenVoorwerpenMain extends StatelessWidget {
  const WWMensenDierenVoorwerpenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWMensenDierenVoorwerpenMainNavigation(),
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
                    title: 'Mensen, dieren en voorwerpen',
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
                        buttontext: 'Verdacht gedrag/voorwerp in trein',
                        destination: 'ww_verdacht_gedrag_voorwerp',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Derden en/of dieren langs de baan',
                        destination: 'ww_derden_dieren',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext:
                            'Mensen, dieren en voorwerpen - Achtergrond',
                        destination: 'ai_mensen_dieren_voorwerpen_main',
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

class WWMensenDierenVoorwerpenMainNavigation extends StatelessWidget {
  const WWMensenDierenVoorwerpenMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_mensen_dieren_voorwerpen_main) {
          await Navigator.pushNamed(
            context,
            'ai_mensen_dieren_voorwerpen_main',
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
          value: PopupNavigation.ai_mensen_dieren_voorwerpen_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Mensen, dieren en voorwerpen',
          ),
        ),
      ],
    );
  }
}