import 'package:trdl_tool/core/all_imports.dart';

class InzettenICB extends StatelessWidget {
  const InzettenICB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'TRDLtool',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Inzetten railvoertuig ICB',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
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
                            '- De machinist van het railvoertuig ICB meldt zich en je:',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '1. overlegt waar hij het railwegvoertuig ICB in het spoor (inzetspoor) kan plaatsen;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '2. vertelt over welke route (verplaatsingsspoor) hij naar de calamiteitenplek (bestemmingsspoor) gaat;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '3. vertelt welke infra-objecten hij in de te berijden route naar de calamiteitenplek zal tegenkomen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De machinist geeft aan of hij binnen de PVR van het nevenspoor komt;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Tref veiligheidsmaatregelen en stel infracapaciteit beschikbaar;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Geef de machinist toestemming om het railvoertuig ICB in het spoor te plaatsen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De machinist meldt dat het railvoertuig is geplaatst;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Stel een rijweg over het verplaatsingsspoor ter beschikking. Behandel het voertuig als een voertuig zonder juiste treindetectie;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Vertel de machinist waar hij zich moet melden. Als er infracapaciteit beschikbaar is gesteld aan een LWB moet hij zich melden bij deze LWB en anders bij aankomst op het bestemmingsspoor;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Na de melding van het vrij zijn en blijven van zowel inzet-, verplaatsing- als bestemmingsspoor, hef je de maatregelen op.',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.procedure,
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Om materieel ten behoeve van afhandeling incidenten snel en zo dicht mogelijk bij de incidentlocatie te krijgen zijn railvoertuigen Incidentenbestrijding beschikbaar. Deze worden op inzetlocaties in het spoor geplaatst en via het spoor verplaatst naar de incidentlocatie. De machinist van het railvoertuig heeft meestal geen plaatselijke wegbekendheid.',
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
