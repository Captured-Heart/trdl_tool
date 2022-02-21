import 'package:trdl_tool/core/all_imports.dart';

class IncidentenAchtergrondBasis extends StatelessWidget {
  const IncidentenAchtergrondBasis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Incidenten basis',
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
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Incidenten - basisinformatie',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Deze pagina bevat de volgende onderdelen:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Alarmeren;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Alarmoproep GSM-R;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Herroepen van een sein;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Alarmeer- en informeer formulier;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Aanwijzingen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Spoorweb.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(title: 'Alarmeren'),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij onveilige situaties is het belangrijk dat er snel gehandeld wordt. Nadat een onveilige situatie is gemeld, handel je als volgt:',
                      ),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Neem maatregelen om uitbreiding te voorkomen. Dit zijn:'),
                      BodyText(indents: 2, text: '* Alarmoproep GSM-R uitzenden;'),
                      BodyText(indents: 2, text: '* Herroepen van seinen (indien noodzakelijk);'),
                      BodyText(indents: 2, text: '* ARI uitzetten voor betreffende planregels (indien noodzakelijk);'),
                      BodyText(indents: 2, text: '* Buurtreindienstleider informeren (indien noodzakelijk);'),
                      BodyText(indents: 2, text: '* Veiligheidsmaatregelen nemen, verhinderen van rijweginstelling;'),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Bepaal of het om een incident gaat;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Alarmeer hulpdiensten en direct noodzakelijke ketenpartners. Doe dit binnen 5 minuten na melding van het incident;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Informeer, indiend belanghebbend, de Medewerker Rangeren.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Je zet de alarmoproep GSM-R van het gealarmeerde gebied pas uit nadat je jezelf ervan hebt overtuigd dat de veiligheidsmaatregelen van jou - en indien van toepassing jouw buurTRDL - de gevaarlijke situatie afdekken.',
                      ),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Inhoud alarmering'),
                      SizedBoxH(),
                      BodyText(indents: 0, text: 'Een alarmering meot zoveel mogelijk antwoord geven op de volgende vragen:'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Wat is er gebeurd?'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Waar is het gebeurd?'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Wanneer is het gebeurd?'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Wie is er bij betrokken?'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Wat is de ernst?'),
                      SizedBoxH(),
                      BodyText(indents: 0, text: 'Bij het uitvagen en alarmeren maak je gebruik van het alarmeer-/informeerformulier.'),
                       SizedBoxH(),
                      BodyText(indents: 0, text: 'N.B.: Bij afwijkingen op de 1e alarmering en gemaakte afspraken met de MKS-BO informeer je de MKS-BO opnieuw.'),
                    ],
                  ),
                ),
              ),
              /*NAVIGATION CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: [
                      const TitleText(
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavButton(
                            buttontext: 'Incidenten - werkwijze',
                            destination: 'incidenten',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Infra',
                            destination: 'infraincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Materieel',
                            destination: 'materieelincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Mensen, dieren en voorwerpen',
                            destination: 'mensendierenvoorwerpenincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Overige incidenten',
                            destination: 'overigeincidentenachtergrond',
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*CARD #4*/
              Card(
                elevation: kCardElevation,
                child: Padding(padding: kCardPadding,child: Column(children: [

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
