import '/all_imports.dart';

class WWAfhandelenSysteemstoringen extends StatelessWidget {
  const WWAfhandelenSysteemstoringen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWAfhandelenSysteemstoringenNavigation(),
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
                    title: 'Afhandelen systeemstoringen',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
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
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Trein komt in infra gereserveerd voor een andere trein.',
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
                        'Alle bediensystemen van de TRDL zijn redundant uitgevoerd en proberen bij storingen/uitval om te schakelen.',
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

class WWAfhandelenSysteemstoringenNavigation extends StatelessWidget {
  const WWAfhandelenSysteemstoringenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_systeemstoringen) {
          await Navigator.pushNamed(context, 'ai_systeemstoringen');
        } else if (result == PopupNavigation.ai_systemen) {
          await Navigator.pushNamed(context, 'ai_systemen');
        } else if (result == PopupNavigation.ai_systeemstoring_gsmr) {
          await Navigator.pushNamed(context, 'ai_systeemstoring_gsmr');
        } else if (result == PopupNavigation.ai_overige_incidenten) {
          await Navigator.pushNamed(context, 'ai_overige_incidenten');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_systeemstoringen,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Systeemstoringen',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_systemen,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Systemen',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_systeemstoring_gsmr,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Systeemstoring GSM-R',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_overige_incidenten,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Overige Incidenten',
          ),
        ),
      ],
    );
  }
}