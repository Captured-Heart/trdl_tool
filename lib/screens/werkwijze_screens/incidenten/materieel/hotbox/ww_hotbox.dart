import '/all_imports.dart';

enum WhereToGoFromWWHotBox {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_hotbox,
  // ignore: constant_identifier_names
  ai_materieel_main,
}

class WWHotBox extends StatelessWidget {
  const WWHotBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWHotboxNav(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Hotbox & Quo Vadis',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Geef de gegevens van de melding (type alarm, asnummer, zijde van de trein) door aan de MCN;\n\n- Laat de trein bij een Hotbox melding beheerst tot stilstand brengen;\n\n- Neem de trein bij een Quo Vadis melding bij de eerstvolgende mogelijkheid aan de kant voor onderzoek;\n\n- Alarmeer als gestrande trein.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Je hoort van de MCN wanneer en onder welke voorwaarden de trein weer kan rijden.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Hotbox meet de temperatuur van de aslagers en de wielen.\n\nQuo Vadis meet de wielrondheid van de trein, de asbelasting en de correcte belading van de trein.\n\nBij een overschrijding van de ingestelde grenswaarden genereert het systeem een automatische melding omdat er verhoogd risico is op ontsporing.',
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

class WWHotboxNav extends StatelessWidget {
  const WWHotboxNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWHotBox>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWHotBox result) async {
        if (result == WhereToGoFromWWHotBox.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWHotBox.ai_hotbox) {
          await Navigator.pushNamed(context, 'ai_hotbox');
        } else if (result == WhereToGoFromWWHotBox.ai_materieel_main) {
          await Navigator.pushNamed(context, 'ai_materieel_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWHotBox>>[
        const PopupMenuItem<WhereToGoFromWWHotBox>(
          value: WhereToGoFromWWHotBox.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWHotBox>(
          value: WhereToGoFromWWHotBox.ai_hotbox,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Hotbox',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWHotBox>(
          value: WhereToGoFromWWHotBox.ai_materieel_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Materieel',
          ),
        ),
      ],
    );
  }
}