import '/all_imports.dart';

enum WhereToGoFromAIBijzonderhedenTreinMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_bijzonderheden_trein_main,
}

class AIBijzonderhedenTreinMain extends StatelessWidget {
  const AIBijzonderhedenTreinMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIBijzonderhedenTreinMainNavigation(),
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
                    title: 'Bijzonderheden trein',
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
                        buttontext: 'Bijzonderheden Trein - Basis',
                        destination: 'ai_bijzonderheden_trein',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Vervoersregeling',
                        destination: 'ai_vervoersregeling',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Onjuiste detectie',
                        destination: 'ai_onjuiste_detectie',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Bijzondere aandacht',
                        destination: 'ai_bijzondere_aandacht',
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/deKameel.jpg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIBijzonderhedenTreinMainNavigation extends StatelessWidget {
  const AIBijzonderhedenTreinMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIBijzonderhedenTreinMain>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromAIBijzonderhedenTreinMain result) async {
        if (result == WhereToGoFromAIBijzonderhedenTreinMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromAIBijzonderhedenTreinMain
                .ww_bijzonderheden_trein_main) {
          await Navigator.pushNamed(
            context,
            'ww_bijzonderheden_trein_main',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromAIBijzonderhedenTreinMain>>[
        const PopupMenuItem<WhereToGoFromAIBijzonderhedenTreinMain>(
          value: WhereToGoFromAIBijzonderhedenTreinMain.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIBijzonderhedenTreinMain>(
          value: WhereToGoFromAIBijzonderhedenTreinMain
              .ww_bijzonderheden_trein_main,
          child: MenuItemContent(
            icon: Utils.iconWW,
            text: 'WW Bijzonderheden Trein',
          ),
        ),
      ],
    );
  }
}