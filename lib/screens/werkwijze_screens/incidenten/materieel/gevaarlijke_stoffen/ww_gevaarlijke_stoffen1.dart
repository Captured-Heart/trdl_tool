import '/all_imports.dart';

enum WhereToGoFromWWGevaarlijkeStoffen1 {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_ruclu,
  // ignore: constant_identifier_names
  ai_gevaarlijke_stoffen,
}

class WWGevaarlijkeStoffen1 extends StatelessWidget {
  const WWGevaarlijkeStoffen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWGevaarlijkeStoffen1Navigation(),
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
                    title: 'Gevaarlijke stoffen en milieu',
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
                        buttontext: 'Gevaarlijke stoffen',
                        destination: 'ww_gevaarlijke_stoffen2',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Meldingen omtrent milieu',
                        destination: 'ww_milieumeldingen',
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

class WWGevaarlijkeStoffen1Navigation extends StatelessWidget {
  const WWGevaarlijkeStoffen1Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWGevaarlijkeStoffen1>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWGevaarlijkeStoffen1 result) async {
        if (result == WhereToGoFromWWGevaarlijkeStoffen1.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWGevaarlijkeStoffen1.ai_ruclu) {
          await Navigator.pushNamed(context, 'ai_ruclu');
        } else if (result ==
            WhereToGoFromWWGevaarlijkeStoffen1.ai_gevaarlijke_stoffen) {
          await Navigator.pushNamed(context, 'ai_gevaarlijke_stoffen');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWGevaarlijkeStoffen1>>[
        const PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen1>(
          value: WhereToGoFromWWGevaarlijkeStoffen1.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen1>(
          value: WhereToGoFromWWGevaarlijkeStoffen1.ai_ruclu,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Procedure RU/CLU',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen1>(
          value: WhereToGoFromWWGevaarlijkeStoffen1.ai_gevaarlijke_stoffen,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Gevaarlijke Stoffen',
          ),
        ),
      ],
    );
  }
}