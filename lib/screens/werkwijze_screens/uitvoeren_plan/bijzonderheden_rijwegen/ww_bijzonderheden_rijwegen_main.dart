import '/all_imports.dart';

class WWBijzonderhedenRijwegenMain extends StatelessWidget {
  const WWBijzonderhedenRijwegenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWBijzonderhedenRijwegenMainNavigation(),
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
                    title: 'Bijzonderheden Rijwegen',
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
                        buttontext: 'Sporen buiten exploitatie',
                        destination: 'ww_rijwegen_exploitatie',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Kop van trein voorbij sein',
                        destination: 'ww_kop_van_trein_voorbij_sein',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Inzetten railvoertuig ICB',
                        destination: 'ww_inzetten_icb',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Toelaten werktreinen',
                        destination: 'ww_toelaten_werktreinen',
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

class WWBijzonderhedenRijwegenMainNavigation extends StatelessWidget {
  const WWBijzonderhedenRijwegenMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_bijzonderheden_rijwegen_main) {
          await Navigator.pushNamed(
            context,
            'ai_bijzonderheden_rijwegen_main',
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
          value: PopupNavigation.ai_bijzonderheden_rijwegen_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Bijzonderheden Rijwegen',
          ),
        ),
      ],
    );
  }
}
