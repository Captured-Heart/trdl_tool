import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWGeplandeWerkzaamhedenMain {
  home_screen,
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
        actions: [
          PopupMenuButton<WhereToGoFromWWGeplandeWerkzaamhedenMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWGeplandeWerkzaamhedenMain result) {
              if (result ==
                  WhereToGoFromWWGeplandeWerkzaamhedenMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWGeplandeWerkzaamhedenMain
                      .ai_geplande_werkzaamheden_main) {
                Navigator.pushNamed(context, 'ai_geplande_werkzaamheden_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWGeplandeWerkzaamhedenMain>>[
              PopupMenuItem<WhereToGoFromWWGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromWWGeplandeWerkzaamhedenMain.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromWWGeplandeWerkzaamhedenMain
                    .ai_geplande_werkzaamheden_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Geplande Werkzaamheden'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const TitleText(
                      title: 'Ga snel naar',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
