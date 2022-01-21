import 'package:trdl_tool/core/all_imports.dart';

class AfhandelenSysteemstoringen extends StatelessWidget {
  const AfhandelenSysteemstoringen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Systeemstoringen',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        text: 'Bij alle computerstoringen en uitval van systemen wacht je 2 minuten op een automatische herstart. Als er niet automatisch wordt herstart, handel je als volgt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Controleer of de storing zich beperkt tot jouw werkplek;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Controleer onder de knop ‘systeem’ in het planscherm de status van de verschillende systemen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Bepaal of het nodig is de calamiteiten-werkplek op te starten. Zet dan ARI uit op de gestoorde werkplek en gebruik indien nodig ‘ARI Noodstop’ in PBH++.',
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
                        text: 'Trein komt in infra gereserveerd voor een andere trein.',
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
                        text: 'Alle bediensystemen van de treindienstleider zijn redundant uitgevoerd en proberen bij storingen/uitval om te schakelen.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
