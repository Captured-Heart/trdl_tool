import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWMaterieelMain {
  home_screen,
  ai_materieel_main,
}

class WWMaterieelMain extends StatelessWidget {
  const WWMaterieelMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWMaterieelMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWMaterieelMain result) {
              if (result == WhereToGoFromWWMaterieelMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWMaterieelMain.ai_materieel_main) {
                Navigator.pushNamed(context, 'ai_materieel_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWMaterieelMain>>[
              const PopupMenuItem<WhereToGoFromWWMaterieelMain>(
                value: WhereToGoFromWWMaterieelMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWMaterieelMain>(
                value: WhereToGoFromWWMaterieelMain.ai_materieel_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Materieel',
                ),
              ),
            ],
          ),
          const HomeButton(),
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
                      title: 'Materieel',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je kunt op drie manieren een melding krijgen over materieel:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Door de MCN;\n\n- Door derden;\n\n- Door systemen.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Als de melding niet van de MCN komt, licht je de MCN van de betrokken trein in.',
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
                          buttontext: 'Vaste rem',
                          destination: 'ww_vaste_rem',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'ATB veiligheidsstoring',
                          destination: 'ww_atb_veiligheidsstoring',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Hotbox & Quo Vadis',
                          destination: 'ww_hotbox',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Gevaarlijke Stoffen',
                          destination: 'ww_gevaarlijke_stoffen1',
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
