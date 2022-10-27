import '/all_imports.dart';

enum WhereToGoFromWWBijzonderhedenRijwegenMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_bijzonderheden_rijwegen_main,
}

class WWBijzonderhedenRijwegenMain extends StatelessWidget {
  const WWBijzonderhedenRijwegenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
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
    return PopupMenuButton<WhereToGoFromWWBijzonderhedenRijwegenMain>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWBijzonderhedenRijwegenMain result) async {
        if (result == WhereToGoFromWWBijzonderhedenRijwegenMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWBijzonderhedenRijwegenMain
                .ai_bijzonderheden_rijwegen_main) {
          await Navigator.pushNamed(
            context,
            'ai_bijzonderheden_rijwegen_main',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWBijzonderhedenRijwegenMain>>[
        const PopupMenuItem<WhereToGoFromWWBijzonderhedenRijwegenMain>(
          value: WhereToGoFromWWBijzonderhedenRijwegenMain.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWBijzonderhedenRijwegenMain>(
          value: WhereToGoFromWWBijzonderhedenRijwegenMain
              .ai_bijzonderheden_rijwegen_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Bijzonderheden Rijwegen',
          ),
        ),
      ],
    );
  }
}
