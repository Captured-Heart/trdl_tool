import '/all_imports.dart';

class AIBijzonderhedenRijwegenMain extends StatelessWidget {
  const AIBijzonderhedenRijwegenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIBijzonderhedenRijwegenMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <SubTitleText>[
                  SubTitleText(
                    subtitle: 'Bijzonderheden Rijwegen',
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
                        buttontext: 'Bijzonderheden Rijwegen - Werkwijze',
                        destination: 'ww_bijzonderheden_rijwegen_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Inzetten railvoertuig (ICB)',
                        destination: 'ai_inzetten_icb',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Toelaten werktreinen',
                        destination: 'ai_toelaten_werktreinen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Rijwegen - Planopbouw',
                        destination: 'ai_rijwegen_planopbouw',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Rijwegen - Planscherm',
                        destination: 'ai_rijwegen_planscherm',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Rijwegen - Bedienscherm',
                        destination: 'ai_rijwegen_bedienscherm',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Rijwegen - ARI',
                        destination: 'ai_rijwegen_ari',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Rijwegen - TROTS en ABT',
                        destination: 'ai_rijwegen_trots_abt',
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
                        'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/icbVoertuig.jpg',
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

class AIBijzonderhedenRijwegenMainNavigation extends StatelessWidget {
  const AIBijzonderhedenRijwegenMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_bijzonderheden_rijwegen_main) {
          await Navigator.pushNamed(
            context,
            'ww_bijzonderheden_rijwegen_main',
          );
        } else if (result == PopupNavigation.ww_kop_van_trein_voorbij_sein) {
          await Navigator.pushNamed(
            context,
            'ww_kop_van_trein_voorbij_sein',
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
          value: PopupNavigation.ww_bijzonderheden_rijwegen_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Bijzonderheden Rijwegen',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_kop_van_trein_voorbij_sein,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Kop van Trein Voorbij Sein',
          ),
        ),
      ],
    );
  }
}
