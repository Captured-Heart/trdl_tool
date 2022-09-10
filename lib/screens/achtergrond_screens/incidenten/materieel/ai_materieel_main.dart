import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIMaterieelMain {
  home_screen,
  ww_materieel_main,
}

class AIMaterieelMain extends StatelessWidget {
  const AIMaterieelMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIMaterieelMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIMaterieelMain result) {
              if (result == WhereToGoFromAIMaterieelMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIMaterieelMain.ww_materieel_main) {
                Navigator.pushNamed(context, 'ww_materieel_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIMaterieelMain>>[
              PopupMenuItem<WhereToGoFromAIMaterieelMain>(
                value: WhereToGoFromAIMaterieelMain.home_screen,
                child: MenuItemContent(icon: Icons.home, text: 'Home',),
              ),
              PopupMenuItem<WhereToGoFromAIMaterieelMain>(
                value: WhereToGoFromAIMaterieelMain.ww_materieel_main,
                child: MenuItemContent(icon: Icons.train, text: 'WW Materieel',),
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
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/aanpassen_plan/incidenten/ai_materieel_1.jpg',
                    ),
                    SizedBoxH(),
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
                          buttontext: 'Materieel - Verloren Onderdelen',
                          destination: 'ai_verloren_onderdelen', //TODO: Toevoegen!
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Vaste Rem',
                          destination: 'ai_vaste_rem', //TODO: Toevoegen!
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'ATB',
                          destination: 'ai_atb', //TODO: Toevoegen!
                        ),
                        //TOEVOEGEN MATERIEEL!!!
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Quo Vadis & Hotbox',
                          destination: 'ai_quo_vadis_hotbox', //TODO: Toevoegen!
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Gevaarlijke stoffen en Milieu',
                          destination: 'ai_gevaarlijke_stoffen_milieu', //TODO: Toevoegen!
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
