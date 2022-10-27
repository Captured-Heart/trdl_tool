import '/all_imports.dart';

//TODO: Hier verder met refactor TextCard()

enum WhereToGoFromWWAfhandelenSysteemstoringen {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_systeemstoringen,
  // ignore: constant_identifier_names
  ai_systemen,
  // ignore: constant_identifier_names
  ai_systeemstoring_gsmr,
  // ignore: constant_identifier_names
  ai_overige_incidenten,
}

class WWAfhandelenSysteemstoringen extends StatelessWidget {
  const WWAfhandelenSysteemstoringen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWAfhandelenSysteemstoringen>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected:
                (WhereToGoFromWWAfhandelenSysteemstoringen result) async {
              if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen
                      .ai_systeemstoringen) {
                await Navigator.pushNamed(context, 'ai_systeemstoringen');
              } else if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen.ai_systemen) {
                await Navigator.pushNamed(context, 'ai_systemen');
              } else if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen
                      .ai_systeemstoring_gsmr) {
                await Navigator.pushNamed(context, 'ai_systeemstoring_gsmr');
              } else if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen
                      .ai_overige_incidenten) {
                await Navigator.pushNamed(context, 'ai_overige_incidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWAfhandelenSysteemstoringen>>[
              const PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen
                    .ai_systeemstoringen,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Systeemstoringen',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen.ai_systemen,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Systemen',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen
                    .ai_systeemstoring_gsmr,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Systeemstoring GSM-R',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen
                    .ai_overige_incidenten,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Overige Incidenten',
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
                      title: 'Afhandelen systeemstoringen',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij alle computerstoringen en uitval van systemen wacht je 2 minuten op een automatische herstart. Als er niet automatisch wordt herstart, handel je als volgt:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          "- Controleer of de storing zich beperkt tot jouw werkplek;\n\n- Controleer onder de knop 'systeem' in het planscherm de status van de verschillende systemen;\n\n- Bepaal of het nodig is de calamiteiten-werkplek op te starten. Zet dan ARI uit op de gestoorde werkplek en gebruik indien nodig 'ARI Noodstop' in PBH++.",
                    ),
                  ],
                ),
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.risico,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Trein komt in infra gereserveerd voor een andere trein.',
                    ),
                  ],
                ),
              ),
            ),
            /*CONTEXT CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Alle bediensystemen van de TRDL zijn redundant uitgevoerd en proberen bij storingen/uitval om te schakelen.',
                    ),
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
