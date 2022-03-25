import 'package:trdl_tool/core/all_imports.dart';

class WWInzettenICB extends StatelessWidget {
  const WWInzettenICB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Inzet ICB',
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
                      title: 'Inzetten railvoertuig ICB',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Voor het inzetten van het railvoertuig incidentenbestrijding bij calamiteiten heb je contact met de AL.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De MCN van het railvoertuig ICB meldt zich en je:',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '1. overlegt waar hij het railwegvoertuig ICB in het spoor (inzetspoor) kan plaatsen;\n2. vertelt over welke route (verplaatsingsspoor) hij naar de calamiteitenplek (bestemmingsspoor) gaat;\n3. vertelt welke infra-objecten hij in de te berijden route naar de calamiteitenplek zal tegenkomen.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De MCN geeft aan of hij binnen de PVR van het nevenspoor komt;\n\n- Tref veiligheidsmaatregelen en stel infracapaciteit beschikbaar;\n\n- Geef de MCN toestemming om het railvoertuig ICB in het spoor te plaatsen;\n\n- De MCN meldt dat het railvoertuig is geplaatst;\n\n- Stel een rijweg over het verplaatsingsspoor ter beschikking. Behandel het voertuig als een voertuig zonder juiste treindetectie;\n\n- Vertel de MCN waar hij zich moet melden. Als er infracapaciteit beschikbaar is gesteld aan een LWB moet hij zich melden bij deze LWB en anders bij aankomst op het bestemmingsspoor;\n\n- Na de melding van het vrij zijn en blijven van zowel inzet-, verplaatsing- als bestemmingsspoor, hef je de maatregelen op.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'In overige situaties moeten alle sporen buitendienst gesteld zijn.',
                    ),
                  ],
                ),
              ),
            ),
            /*RISIO CARD*/
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
                          'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
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
                          'Om materieel ten behoeve van afhandeling incidenten snel en zo dicht mogelijk bij de incidentlocatie te krijgen zijn railvoertuigen Incidentenbestrijding beschikbaar. Deze worden op inzetlocaties in het spoor geplaatst en via het spoor verplaatst naar de incidentlocatie. De MCN van het railvoertuig heeft meestal geen plaatselijke wegbekendheid.',
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
                          buttontext: 'Inzetten Railvoertuig ICB - Achtergrond',
                          destination: 'ai_inzetten_railvoertuig',
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