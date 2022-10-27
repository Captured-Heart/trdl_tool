import '/all_imports.dart';

enum WhereToGoFromWWBijzonderhedenTreinMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_bijzonderheden_trein_main,
}

class WWBijzonderhedenTreinMain extends StatelessWidget {
  const WWBijzonderhedenTreinMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWBijzonderhedenTreinNavigation(),
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
                    title: 'Bijzonderheden Trein',
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
                        buttontext: 'Treinen met Vervoersregeling',
                        destination: 'ww_vervoersregeling',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Voertuigen zonder Detectie',
                        destination: 'ww_onjuiste_detectie',
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

class WWBijzonderhedenTreinNavigation extends StatelessWidget {
  const WWBijzonderhedenTreinNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWBijzonderhedenTreinMain>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWBijzonderhedenTreinMain result) async {
        if (result == WhereToGoFromWWBijzonderhedenTreinMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWBijzonderhedenTreinMain
                .ai_bijzonderheden_trein_main) {
          await Navigator.pushNamed(
            context,
            'ai_bijzonderheden_trein_main',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWBijzonderhedenTreinMain>>[
        const PopupMenuItem<WhereToGoFromWWBijzonderhedenTreinMain>(
          value: WhereToGoFromWWBijzonderhedenTreinMain.home_screen,
          child: MenuItemContent(
            icon: Utils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWBijzonderhedenTreinMain>(
          value: WhereToGoFromWWBijzonderhedenTreinMain
              .ai_bijzonderheden_trein_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Bijzonderheden Trein',
          ),
        ),
      ],
    );
  }
}