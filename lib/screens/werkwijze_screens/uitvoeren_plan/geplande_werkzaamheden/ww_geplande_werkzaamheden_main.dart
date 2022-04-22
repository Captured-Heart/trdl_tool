import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWGeplandeWerkzaamhedenMain { home, aiGeplandeWerkzaamheden }

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
              if (result == WhereToGoFromWWGeplandeWerkzaamhedenMain.home) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWGeplandeWerkzaamhedenMain
                      .aiGeplandeWerkzaamheden) {
                Navigator.pushNamed(context, 'ai_geplande_werkzaamheden_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWGeplandeWerkzaamhedenMain>>[
              const PopupMenuItem<WhereToGoFromWWGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromWWGeplandeWerkzaamhedenMain.home,
                child: Text('Home'),
              ),
              const PopupMenuItem<WhereToGoFromWWGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromWWGeplandeWerkzaamhedenMain
                    .aiGeplandeWerkzaamheden,
                child: Text('AI Geplande Werkzaamheden'),
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
