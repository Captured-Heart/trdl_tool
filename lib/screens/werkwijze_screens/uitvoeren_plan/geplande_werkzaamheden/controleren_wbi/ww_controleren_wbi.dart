import 'package:trdl_tool/all_imports.dart';

class WWControlerenWBI extends StatelessWidget {
  const WWControlerenWBI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Controleren WBI',
        ),
        actions: const [
          HomeButton(),
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
                      title: 'Controleren WBI',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Voor aanvang van de werkzaamheden controleer je of:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Niet onbedoeld een rijweg instelbaar is naar de buitendienststelling;\n\n- De veiligheidsmaatregelen van de LWB invloed hebben op je eigen veiligheidsmaatregelen;\n\n- Voldaan is aan de toetscriteria WBI/WECO die beschreven zijn in de werkinstructie WBI/WECO.',
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
                          'Trein komt op voor werkzaamheden beschikbaar gesteld spoor.',
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
                          'In de voorbereiding is de treindienst aangepast aan de werkzaamheden. Fouten in de WBI/WECO kunnen ervoor zorgen dat werkplekbeveiligingsmaatregelen van de TRDL en/of de LWB niet of niet juist getroffen kunnen worden.\n\nFouten kunnen gecorrigeerd worden in overleg met de afdeling Werkplekbeveiliging.',
                    ),
                  ],
                ),
              ),
            ),
            /*ACHTERGROND CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const TitleText(
                      title: 'Achtergrondinfo',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        NavButton(
                          buttontext: 'Controleren WBI - Achtergrond',
                          destination: 'ai_controleren_wbi',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Fouten in de WBI - Achtergrond',
                          destination: 'ai_fouten_wbi',
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
