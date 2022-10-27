import '/all_imports.dart';

enum WhereToGoFromWWMaterieelMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
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
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWMaterieelMainNavigator(),
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
            ],
          ),
        ),
      ),
    );
  }
}

class WWMaterieelMainNavigator extends StatelessWidget {
  const WWMaterieelMainNavigator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWMaterieelMain>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWMaterieelMain result) async {
        if (result == WhereToGoFromWWMaterieelMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWMaterieelMain.ai_materieel_main) {
          await Navigator.pushNamed(context, 'ai_materieel_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWMaterieelMain>>[
        const PopupMenuItem<WhereToGoFromWWMaterieelMain>(
          value: WhereToGoFromWWMaterieelMain.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWMaterieelMain>(
          value: WhereToGoFromWWMaterieelMain.ai_materieel_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Materieel',
          ),
        ),
      ],
    );
  }
}
