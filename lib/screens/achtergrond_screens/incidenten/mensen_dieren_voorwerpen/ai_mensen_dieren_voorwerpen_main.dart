import '/all_imports.dart';

class AIMensenDierenVoorwerpenMain extends StatelessWidget {
  const AIMensenDierenVoorwerpenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIMensenDierenVoorwerpenMainNavigation(),
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
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_mensen_dieren_voorwerpen_main_1.png',
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
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Werkwijze - Mensen, dieren en voorwerpen',
                        destination: 'ww_mensen_dieren_voorwerpen_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Derden en/of dieren langs de baan',
                        destination: 'ai_derden_dieren',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Verdacht gedrag of voorwerp',
                        destination: 'ai_verdacht_gedrag_voorwerp',
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

class AIMensenDierenVoorwerpenMainNavigation extends StatelessWidget {
  const AIMensenDierenVoorwerpenMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_mensen_dieren_voorwerpen_main) {
          await Navigator.pushNamed(
            context,
            'ww_mensen_dieren_voorwerpen_main',
          );
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
          value: PopupNavigation.ww_mensen_dieren_voorwerpen_main,
          child: MenuItemContent(
            icon: Utils.iconWW,
            text: 'WW Mensen/Dieren/Voorwerpen',
          ),
        ),
      ],
    );
  }
}
