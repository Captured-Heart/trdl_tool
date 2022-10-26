import '/all_imports.dart';

enum WhereToGoFromWWSpoorMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_infra_main,
  // ignore: constant_identifier_names
  ai_spoor_main,
}

class WWSpoorMain extends StatelessWidget {
  const WWSpoorMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWSpoorMain>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWSpoorMain result) async {
              if (result == WhereToGoFromWWSpoorMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWSpoorMain.ai_infra_main) {
                await Navigator.pushNamed(context, 'ai_infra_main');
              } else if (result == WhereToGoFromWWSpoorMain.ai_spoor_main) {
                await Navigator.pushNamed(context, 'ai_spoor_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWSpoorMain>>[
              const PopupMenuItem<WhereToGoFromWWSpoorMain>(
                value: WhereToGoFromWWSpoorMain.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWSpoorMain>(
                value: WhereToGoFromWWSpoorMain.ai_infra_main,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Infra',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWSpoorMain>(
                value: WhereToGoFromWWSpoorMain.ai_spoor_main,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Spoor',
                ),
              ),
            ],
          ),
          const HomeButton()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <TitleText>[
                    TitleText(
                      title: 'Spoor',
                    ),
                  ],
                ),
              ),
            ),
            /*NAVIGATION CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: <Widget>[
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}