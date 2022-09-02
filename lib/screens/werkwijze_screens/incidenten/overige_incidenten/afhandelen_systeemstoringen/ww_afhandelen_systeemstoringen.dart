import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWAfhandelenSysteemstoringen {
  home_screen,
  ai_systeemstoringen,
  ai_systemen,
  ai_systeemstoring_gsmr,
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
        actions: [
          PopupMenuButton<WhereToGoFromWWAfhandelenSysteemstoringen>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWAfhandelenSysteemstoringen result) {
              if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen
                      .ai_systeemstoringen) {
                Navigator.pushNamed(context, 'ai_systeemstoringen');
              } else if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen.ai_systemen) {
                Navigator.pushNamed(context, 'ai_systemen');
              } else if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen
                      .ai_systeemstoring_gsmr) {
                Navigator.pushNamed(context, 'ai_systeemstoring_gsmr');
              } else if (result ==
                  WhereToGoFromWWAfhandelenSysteemstoringen
                      .ai_overige_incidenten) {
                Navigator.pushNamed(context, 'ai_overige_incidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWAfhandelenSysteemstoringen>>[
              PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen.home_screen,
                child: MenuItemContent(icon: Icons.home, text: 'Home',),
              ),
              PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen
                    .ai_systeemstoringen,
                child: MenuItemContent(icon: Icons.menu_book, text: 'AI Systeemstoringen',),
              ),
              PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen.ai_systemen,
                child: MenuItemContent(icon: Icons.menu_book, text: 'AI Systemen',),
              ),
              PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen
                    .ai_systeemstoring_gsmr,
                child: MenuItemContent(icon: Icons.menu_book, text: 'AI Systeemstoring GSM-R',),
              ),
              PopupMenuItem<WhereToGoFromWWAfhandelenSysteemstoringen>(
                value: WhereToGoFromWWAfhandelenSysteemstoringen
                    .ai_overige_incidenten,
                child: MenuItemContent(icon: Icons.menu_book, text: 'AI Overige Incidenten',),
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
                          '- Controleer of de storing zich beperkt tot jouw werkplek;\n\n- Controleer onder de knop \'systeem\' in het planscherm de status van de verschillende systemen;\n\n- Bepaal of het nodig is de calamiteiten-werkplek op te starten. Zet dan ARI uit op de gestoorde werkplek en gebruik indien nodig \'ARI Noodstop\' in PBH++.',
                    ),
                  ],
                ),
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
