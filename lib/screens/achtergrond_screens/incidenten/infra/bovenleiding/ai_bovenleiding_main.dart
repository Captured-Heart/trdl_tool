import '/all_imports.dart';

class AIBovenleidingMain extends StatelessWidget {
  const AIBovenleidingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIBovenleidingMainNavigation(),
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
                    title: 'Bovenleiding',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/bovenleiding_achtergrond_main.jpg',
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
                    children: const <NavButton>[
                      NavButton(
                        buttontext: 'Werkwijze - Bovenleiding',
                        destination: 'bovenleiding',
                      ),
                      //TODO Hier verder met informatie toevoegen!
                      //   SizedBoxH(),
                      //   NavButton(
                      //     buttontext: 'Wissels - basisinformatie',
                      //     destination: 'wisselsbasisinformatie',
                      //   ),
                      //   SizedBoxH(),
                      //   NavButton(
                      //     buttontext: 'Wissel niet in eindstand',
                      //     destination: 'wisselnietineindstandincidentenachtergrond',
                      //   ),
                      //   SizedBoxH(),
                      //   NavButton(
                      //     buttontext: 'Gestoord wissel',
                      //     destination: 'gestoordwisselincidentenachtergrond',
                      //   ),
                      //   SizedBoxH(),
                      //   NavButton(
                      //     buttontext: 'Opengereden wissel',
                      //     destination: 'opengeredenwisselincidentenachtergrond',
                      //   ),
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

class AIBovenleidingMainNavigation extends StatelessWidget {
  const AIBovenleidingMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
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
      ],
    );
  }
}
