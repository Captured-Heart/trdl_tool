import '/all_imports.dart';

enum WhereToGoFromWWWisselsMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_wissels_main,
  // ignore: constant_identifier_names
  ai_infra_overig,
  // ignore: constant_identifier_names
  ai_incidenten_main,
}

class WWWisselsMain extends StatelessWidget {
  const WWWisselsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWWisselsMainNavigation(),
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
                    title: 'Wissels',
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
                        buttontext: 'Wissel niet in eindstand',
                        destination: 'ww_wissel_eindstand',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Opengereden wissel',
                        destination: 'ww_opengereden_wissel',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Gestoord wissel',
                        destination: 'ww_gestoord_wissel',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Beschadigd wissel',
                        destination: 'ww_beschadigd_wissel',
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

class WWWisselsMainNavigation extends StatelessWidget {
  const WWWisselsMainNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWWisselsMain>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWWisselsMain result) async {
        if (result == WhereToGoFromWWWisselsMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWWisselsMain.ai_wissels_main) {
          await Navigator.pushNamed(context, 'ai_wissels_main');
        } else if (result == WhereToGoFromWWWisselsMain.ai_infra_overig) {
          await Navigator.pushNamed(context, 'ai_infra_overig');
        } else if (result == WhereToGoFromWWWisselsMain.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWWisselsMain>>[
        const PopupMenuItem<WhereToGoFromWWWisselsMain>(
          value: WhereToGoFromWWWisselsMain.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWWisselsMain>(
          value: WhereToGoFromWWWisselsMain.ai_wissels_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Wissels',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWWisselsMain>(
          value: WhereToGoFromWWWisselsMain.ai_infra_overig,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Infra Overig',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWWisselsMain>(
          value: WhereToGoFromWWWisselsMain.ai_incidenten_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
      ],
    );
  }
}
