import '/all_imports.dart';

class AIBijzonderhedenTreinMain extends StatelessWidget {
  const AIBijzonderhedenTreinMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
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
                        buttontext: 'Bijzonderheden Trein - Werkwijze',
                        destination: 'ww_bijzonderheden_trein_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Bijzonderheden Trein - Basis',
                        destination: 'ai_bijzonderheden_trein_basis',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Vervoersregeling',
                        destination: 'ai_vervoersregeling',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Voertuig onjuiste detectie',
                        destination: 'ai_voertuig_onjuiste_detectie',
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
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_bijzonderheden_trein_main) {
          await Navigator.pushNamed(
            context,
            'ww_bijzonderheden_trein_main',
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
          value: PopupNavigation.ww_bijzonderheden_trein_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Bijzonderheden Trein',
          ),
        ),
      ],
    );
  }
}
