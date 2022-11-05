import '/all_imports.dart';

class AIMaterieelMain extends StatelessWidget {
  const AIMaterieelMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIMaterieelMainNavigation(),
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
                    title: 'Materieel',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_materieel_1.jpg',
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
                        buttontext: 'Materieel - Verloren Onderdelen',
                        destination: 'ai_verloren_onderdelen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Vaste Rem',
                        destination: 'ai_vaste_rem',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'ATB',
                        destination: 'ai_atb',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Quo Vadis & Hotbox',
                        destination: 'ai_quo_vadis_hotbox',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Gevaarlijke stoffen en Milieu',
                        destination: 'ai_gevaarlijke_stoffen_milieu',
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

class AIMaterieelMainNavigation extends StatelessWidget {
  const AIMaterieelMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_materieel_main) {
          await Navigator.pushNamed(context, 'ww_materieel_main');
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
          value: PopupNavigation.ww_materieel_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Materieel',
          ),
        ),
      ],
    );
  }
}
