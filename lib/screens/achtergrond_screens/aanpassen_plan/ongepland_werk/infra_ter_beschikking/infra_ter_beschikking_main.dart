import 'package:trdl_tool/core/all_imports.dart';

class InfraTerBeschikkingAchtergrond extends StatelessWidget {
  const InfraTerBeschikkingAchtergrond({Key? key}) : super(key: key);

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
              /*CARD #1*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Infracapaciteit ter beschikking stellen',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je bent als TRDL bevoegd tot het tijdig ter beschikking stellen van veilige rijwegen en het treffen van veiligheidsmaatregelen bij storingen en bij werkzaamheden aan of in de nabijheid van hoofdspoorweginfrastructuur.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De beheerder is verantwoordelijk voor het leiden van het treinverkeer over de hoofdspoorweginfrastructuur. De Spoorwegwet kent hiervoor geen uitzondering ten aanzien van buiten dienst gesteld spoor.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Bij het uitvoeren van onderhoud en het gebruik van spoor-/werkvoertuigen is geen sprake van verkeer in de zin van de Spoorwegwet. Spoor-/werkvoertuigen binnen het beschikbaar gestelde gebied zijn mobiele arbeidsmiddelen conform de arbeidsomstandighedenwet. Mobiele arbeidsmiddelen kunnen bewegingen maken binnen het beschikbaar gestelde gebied.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je draagt geen verantwoordelijkheid over en blijft verantwoordelijk voor het leiden van het treinverkeer.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: 'Creëren van een veilige werkplek',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Binnen het spoorwegsysteem worden verschillende soorten activiteiten uitgevoerd. Er is een verschil in het werken aan de infra, werken aan materieel, werken bij een incident, inspecties, etc. Voor alle activiteiten moet een veilige werkplek worden gecreëerd.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als je een rol hebt bij het creëren van een veilige werkplek verloopt het proces als volgt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Je stelt op verzoek de –voor veilig werken benodigde- railinfra(capaciteit) beschikbaar voor werkzaamheden (1e schil);',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Je geeft –in onderlinge afstemming- een partij toestemming om werkzaamheden (aan de railinfra, aan materieel of afhandeling incident) uit te voeren;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Het werk moet beveiligd worden. De werkplekbeveiliging wordt aangebracht door de onderneming (of instantie) die het werk uitvoert (2e schil).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'N.B.: De werkplekbeveiliging is anders voor werk aan de railinfra en voor werk aan materieel. Werkplekbeveiliging bij een calamiteit verandert tijdens de duur van de calamiteit.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je stelt railinfra beschikbaar en plaatst verhinderingen om te voorkomen dat onbedoeld een rijweg richting de werkplek kan worden ingesteld. Soorten verhinderingen zijn:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- VHB, verhindering bediening;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- VHR, verhindering rijweginstelling;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- VHR-E, verhindering rijweginstelling met extra bediening.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/weco.png',
                      ),
                      SizedBoxH(),
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
