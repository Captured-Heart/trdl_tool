import '/all_imports.dart';

enum WhereToGoFromWWGeplandeWerkzaamhedenMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_geplande_werkzaamheden_main
}

class WWGeplandeWerkzaamhedenMain extends StatelessWidget {
  const WWGeplandeWerkzaamhedenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWGeplandeWerkzaamhedenMain>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected:
                (WhereToGoFromWWGeplandeWerkzaamhedenMain result) async {
              if (result ==
                  WhereToGoFromWWGeplandeWerkzaamhedenMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWGeplandeWerkzaamhedenMain
                      .ai_geplande_werkzaamheden_main) {
                await Navigator.pushNamed(
                  context,
                  'ai_geplande_werkzaamheden_main',
                );
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWGeplandeWerkzaamhedenMain>>[
              const PopupMenuItem<WhereToGoFromWWGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromWWGeplandeWerkzaamhedenMain.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconInfo,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromWWGeplandeWerkzaamhedenMain
                    .ai_geplande_werkzaamheden_main,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Geplande Werkzaamheden',
                ),
              ),
            ],
          ),
          const HomeButton(),
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
                  children: const <Widget>[
                    TitleText(
                      title: 'Geplande Werkzaamheden',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Dit zijn vooraf geplande werkzaamheden die zijn vastgelegd in een Werkplek Beveiligings Instructie (WBI/WECO).',
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
                          buttontext: 'Aanvang Werkzaamheden',
                          destination: 'ww_aanvang_werkzaamheden',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Controleren WBI',
                          destination: 'ww_controleren_wbi',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Fouten in de WBI',
                          destination: 'ww_fouten_in_de_wbi',
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