import 'package:trdl_tool/all_imports.dart';

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
                        text:
                            'Bij onveilige situaties is het belangrijk dat er snel gehandeld wordt. Nadat een onveilige situatie is gemeld, handel je als volgt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Neem maatregelen om uitbreiding te voorkomen. Dit zijn:'),
                      BodyText(
                          indents: 2, text: '* Alarmoproep GSM-R uitzenden;'),
                      BodyText(
                          indents: 2,
                          text:
                              '* Herroepen van seinen (indien noodzakelijk);'),
                      BodyText(
                          indents: 2,
                          text:
                              '* ARI uitzetten voor betreffende planregels (indien noodzakelijk);'),
                      BodyText(
                          indents: 2,
                          text:
                              '* Buurtreindienstleider informeren (indien noodzakelijk);'),
                      BodyText(
                          indents: 2,
                          text:
                              '* Veiligheidsmaatregelen nemen, verhinderen van rijweginstelling;'),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Bepaal of het om een incident gaat;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Alarmeer hulpdiensten en direct noodzakelijke ketenpartners. Doe dit binnen 5 minuten na melding van het incident;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Informeer, indiend belanghebbend, de Medewerker Rangeren.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je zet de alarmoproep GSM-R van het gealarmeerde gebied pas uit nadat je jezelf ervan hebt overtuigd dat de veiligheidsmaatregelen van jou - en indien van toepassing jouw buurTRDL - de gevaarlijke situatie afdekken.',
                      ),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Inhoud alarmering'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Een alarmering meot zoveel mogelijk antwoord geven op de volgende vragen:'),
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
                      BodyText(
                          indents: 0,
                          text:
                              'Bij het uitvagen en alarmeren maak je gebruik van het alarmeer-/informeerformulier.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'N.B.: Bij afwijkingen op de 1e alarmering en gemaakte afspraken met de MKS-BO informeer je de MKS-BO opnieuw.'),
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
                            destination:
                                'mensendierenvoorwerpenincidentenachtergrond',
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
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: [
                      TitleText(title: 'Alarmoproep GSM-R'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text: 'Er bestaan 3 soorten alarmoproepen:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Automatisch gegenereerde alarmoproep (AGA);'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1, text: '- Machinist plaatst alarmoproep;'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- TRDL plaatst alarmoproep.'),
                      SizedBoxH(),
                      SubTitleText(
                          subtitle: 'Automatisch gegenereerde alarmoproep'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Als een trein door stoptonend sein rijdt én in de rijweg van een andere trein kan komen, signaleert Procesleiding dat: \'botsgevaar\'. Je krijgt een categorie A melding in PRL en GSM-R genereert automatisch een alarmoproep.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0, text: 'Kenmerken van deze situatie:'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Spreken is niet mogelijk;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Alleen de TRDL kan de alarmoproep beëindigen.'),
                      SizedBoxH(),
                      SubTitleText(
                          subtitle:
                              'Machinist plaatst alarmoproep (klein gebied)'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Wanneer een machinist een alarmoproep plaatst, dan gaat dat via het 3 cellen principe: de cel waarin de trein zich bevindt en de 2 aangrenzende cellen gaan in alarm. Indien er sprake is van een kleine cel dan wordt er, op basis van de remweg, een extra cel in alarm gezet.\n\nWanneer een machinist een alarmoproep plaatst, dan gaat dat via het 3 cellen principe: de cel waarin de trein zich bevindt en de 2 aangrenzende cellen gaan in alarm. Indien er sprake is van een kleine cel dan wordt er, op basis van de remweg, een extra cel in alarm gezet.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0, text: 'Kenmerken van deze situatie:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- De cel van waaruit de alarmoproep is opgezet, en de twee aangrenzende cellen, blijven in alarm staan. De alarmoproep verplaatst niet met de trein mee. Wanneer een andere trein de cellen in alarm binnenrijdt, krijgt de MCN een alarmmelding. De alarmmelding stopt als de trein de cellen in alarm verlaat, of na beëindigen van het alarm door de TRDL;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- De MCN die een alarm opzet kan direct, zonder vertraging, met behulp van de spreeksleutel met de TRDL spreken. De alarmoproep en het gesprek zijn alleen hoorbaar voor MCN binnen de drie gealarmeerde cellen;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- MCN binnen de gealarmeerde cellen kunnen niet gelijktijdig spreken;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Met MCN die zich buiten de drie cellen bevinden die in alarm staan, is een normaal \'point to point\' gesprek mogelijk.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'N.B.: MCN van treinen die zich buiten de gealarmeerde cellen bevinden rijden nog niet op zicht omdat ze de alarmoproep nog niet hebben ontvangen.'),
                      SizedBoxH(),
                      InsertImage(
                          image:
                              'assets/achtergrond_info/incidenten/alarmoproepCellen1.png'),
                      SizedBoxH(),
                      InsertImage(
                          image:
                              'assets/achtergrond_info/incidenten/alarmoproepCellen2.png'),
                      SizedBoxH(),
                      BodyText(indents: 0, text: 'Nota Bene:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Bij een binnenkomend alarm op meer dan één post, kan iedere ontvangende TRDL het alarm aannemen ongeacht zijn/haar locatie. Het akoestische signaal wordt dan bij alle andere ontvangende TRDL uitgeschakeld. Als één van de betrokken TRDL op de \'clear\' toets drukt, wordt het alarm beëindigd.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Je ziet altijd het treinnummer dat door de MCN in zijn GSM-R is ingevoerd. Is er geen treinnummer ingevoerd, dan zie je wel in welk gebied de alarmoproep wordt uitgezonden.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Het volume van het alarmsignaal bij de TRDL kan door de postbeheerder worden ingesteld. Advies: niet lager dan stand 7.'),
                      SizedBoxH(),
                      SubTitleText(
                          subtitle: 'TRDL plaatst alarmoproep (groot gebied)'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0, text: 'Kenmerken van deze situatie:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Alle cellen in het gebied gaan in alarm, waardoor alle MCN in het gebied een alarmoproep binnenkrijgen. Als een andere trein de cellen in alarm binnenrijdt, ontvangt de MCN een alarmmelding. De alarmmelding stopt als de trein de cellen in alarm verlaat, of na beëindigen van het alarm door de TRDL;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- De alarmoproep en het gesprek zijn alleen hoorbaar voor MCN die zich binnen de cellen in alarm bevinden;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Na het uitzenden van de alarmoproep klinken er een aantal piepjes, waarna de TRDL een boodschap kan uitzenden;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Het alarmsignaal heeft prioriteit, waardoor de kwaliteit van de spreekverbinding minder is. Het is niet vanzelfsprekend dat de mcn de boodschap correct verstaat.'),
                      SizedBoxH(),
                      InsertImage(
                          image:
                              'assets/achtergrond_info/incidenten/alarmoproepCellen3.png'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Opzetten alarmoproep'),
                      SizedBoxH(),
                      BodyText(indents: 0, text: 'Door de MCN:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- De MCN plaatst een alarmoproep zodra hij/zij een gevaarlijke situatie waarneemt.'),
                      SizedBoxH(),
                      BodyText(indents: 0, text: 'Toelichting:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Wanneer zich een gevaarlijke situatie voordoet, is het belangrijk dat er snel gealarmeerd wordt, want:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Zodra de MCN heeft gealarmeerd, is er sprake van een min of meer beheerste situatie; het gevaarpunt is direct afgedekt en de TRDL kan direct uitvragen en door-alarmeren;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Als de MCN eerst de TRDL belt, zet de TRDL toch eerst een alarmoproep op. Hierdoor gaat tijd verloren, omdat de TRDL niet direct kan uitvragen en door-alarmeren. Bovendien beslaat de alarmoproep dan een veel groter gebied.'),
                      SizedBoxH(),
                      BodyText(indents: 0, text: 'Door de TRDL:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Je plaatst een alarmoproep zodra je kennis hebt van een gevaarlijke situatie.'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Beëindigen alarmoproep'),
                      SizedBoxH(),
                      BodyText(indents: 0, text: 'Door de MCN:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Handboek machinist (1-11-2019): \'De machinist beëindigt \'rijden op zicht\' als de alarmoproep op de GSM-R is beëindigd én hij een bericht heeft ontvangen van de treindienstleider dat de alarmoproep beëindigd is.\n\nOntvangt de machinist de oproep niet, dan belt de machinist zelf met de treindienstleider.\''),
                      SizedBoxH(),
                      BodyText(indents: 0, text: 'Door de TRDL:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Je beëindigt het alarm als er een veilige situatie is gecreëerd. Alleen de TRDL mag een alarm beëindigen:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text: '- Zet het alarm op de console uit;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Informeert de MCN indien mogelijk dat de alarmoproep is beëindigd.'),
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
                            buttontext: 'Communicatiemiddelen',
                            destination: 'communicatiemiddelenbasis',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Communicatiesysteem GSM-R',
                            destination: 'communicatiesysteembasis',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Systeemstoring GSM-R',
                            destination:
                                'materieelincidentenachtergrond', //TODO: Toevoegen!
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*CARD #6*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: [
                      TitleText(title: 'Herroepen van een sein'),
                      //TODO: Hier verder!
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
