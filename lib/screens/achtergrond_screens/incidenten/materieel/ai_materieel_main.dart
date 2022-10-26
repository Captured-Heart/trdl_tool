import '/all_imports.dart';

enum WhereToGoFromAIMaterieelMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
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
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIMaterieelMain>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIMaterieelMain result) async {
              if (result == WhereToGoFromAIMaterieelMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIMaterieelMain.ww_materieel_main) {
                await Navigator.pushNamed(context, 'ww_materieel_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIMaterieelMain>>[
              const PopupMenuItem<WhereToGoFromAIMaterieelMain>(
                value: WhereToGoFromAIMaterieelMain.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIMaterieelMain>(
                value: WhereToGoFromAIMaterieelMain.ww_materieel_main,
                child: MenuItemContent(
                  icon: Utils.iconWW,
                  text: 'WW Materieel',
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
                      title: 'Materieel',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_materieel_1.jpg',
                    ),
                    SizedBoxH(),
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
                          buttontext: 'Materieel - Verloren Onderdelen',
                          destination:
                              'ai_verloren_onderdelen', //TODO: Toevoegen!
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
                          destination:
                              'ai_gevaarlijke_stoffen_milieu', //TODO: Toevoegen!
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