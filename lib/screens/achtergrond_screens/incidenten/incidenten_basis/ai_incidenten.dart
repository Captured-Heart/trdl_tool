import 'package:trdl_tool/core/all_imports.dart';

class AIIncidenten extends StatelessWidget {
  const AIIncidenten({Key? key}) : super(key: key);

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
                    children: const [
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
                              'assets/images/achtergrond_info/incidenten/alarmoproepCellen1.png'),
                      SizedBoxH(),
                      InsertImage(
                          image:
                              'assets/images/achtergrond_info/incidenten/alarmoproepCellen2.png'),
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
                              'assets/images/achtergrond_info/incidenten/alarmoproepCellen3.png'),
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
                    children: const [
                      TitleText(title: 'Herroepen van een sein'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Gevaar'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Je moet een sein herroepen ter voorkoming van onmiddelijk gevaar.'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Bijsturing'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text: 'Je mag een sein herroepen voor bijsturing:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1, text: '- Nadat de MCN is ingelicht, of;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Als je de zekerheid hebt dat er geen MCN op of bij de trein aanwezig is.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text: 'Hiertoe doorloop je de volgende stappen:'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Benader de MCN'),
                      SizedBoxH(),
                      BodyText(
                          indents: 2,
                          text: '* via een point to point oproep per GSM-R;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 2,
                          text:
                              '* indien geen contact volgt, dan plaats je een Algemene Oproep (benoem hierin trein-, sein- en spoornummer);'),
                      SizedBoxH(),
                      BodyText(
                          indents: 2,
                          text:
                              '* indien contact met de MCN via portofoons verloopt, een oproep per portofoon.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text: '- Bij geen contact herroep je het sein.'),
                    ],
                  ),
                ),
              ),
              /*CARD #7*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(title: 'Alarmeer- en informeerformulier'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Meldingen over verschillende infraonttrekkingen komen uit verschillende delen van het land op het CMBO samen. De meldingen worden getoond in Spoorweb in een lijst met dossiers.\n\nOm te voorkomen dat er onduidelijkheid ontstaat over de exacte infra onttrekking en logistieke consequentie bij verstoringen, storingen en calamiteiten maak je als treindienstleider gebruik van het alarmeer- informeerformulier. Het formulier gebruik je bij het uitvragen en het alarmeren en informeren conform de beslisboom. De antwoorden noteer je direct op het formulier.\n\nNadat je de gegevens op het formulier hebt ingevuld en noodzakelijke ketenpartners gealarmeerd hebt, informeer je de DVL en CRA.\n\nHet doel van het alarmeer- informeer formulier is:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text: '- Borging van de kwaliteit van informatie;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Borging van goed alarmeren/informeren naar MKS-BO, OBI, DVL en CRA;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text: '- Eenduidige communicatie over incident;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Geen overbodige communicatie omdat er onduidelijkheden zijn bij het alarmeren.'),
                      SizedBoxH(),
                      InsertImage(
                          image:
                              'assets/images/achtergrond_info/incidenten/alarmeer_informeerFormulier.png'),
                      SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*CARD #8*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(title: 'Aanwijzingen'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Een aanwijzing is een schriftelijk of mondeling gegeven opdracht aan de MCN aangaande veiligheidsmaatregelen. Deze gaat altijd boven alle andere opdrachten. Communicatie tussen TRDL en MCN over de aanwijzingen richt zich op de zgn. variabele tekstblokken, die op de formulieren genoteerd moeten worden.\n\nJe noteert de desbetreffende gegevens op het eigen formulier en leest ze voor aan de MCN. Daarnaast is er op de formulieren sprake van de zgn. vaste gegevens. Dit betreft specifieke gegevens over de wijze waarop de MCN de aanwijzing moet toepassen. Ze zijn als geheugensteun op de formulieren vermeld. Over deze vaste gegevens hoeft onderling niet gecommuniceerd te worden (dit geldt ook voor de beeldinstructie op de aanwijzing VS).\n\nHet formulier mag maar voor één soort aanwijzing tegelijkertijd worden gebruikt. Dit houdt in dat bij twee of meer tegelijkertijd af te geven soorten aanwijzingen, twee of meer formulieren gebruikt moeten worden.\n\nStel de rijweg pas in als je de zekerheid hebt dat de MCN de aanwijzing heeft ontvangen. De buurTRDL mag namens jou een aanwijzing SB, VR of OVW afgeven. Als je aanwijzingen afgeeft namens jouw buurTRDL moet je de treinen die een aanwijzing hebben afseinen.'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Schriftelijk'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Gebruik de door ProRail Verkeersleiding voorgeschreven modellen.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Vul de aanwijzing in en overhandig deze aan de btrokken MCN;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Laat de MCN het duplicaat voor ontvangst tekenen.'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Via een spreekverbinding'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Als TRDL kun je onder andere gebruik maken van de volgende aanwijzingen:'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- STS (stop tonend sein);'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1, text: '- STS (met normale snelheid);'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- VR (voorzichtig rijden);'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- SB (snelheid begrenzen);'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- OVW (Overweg);'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Er bestaan nog meer aanwijzingen, bijvoorbeeld aanwijzing Verkeerd Spoor, maar deze worden vermeld in de lokale regelgeving.\n\nHet is belangrijk om aanwijzingen nauwkeurig in te vullen en te ondertekenen. Het is immers een veiligheidsdocument. Als je een aanwijzing afgeeft, is dat voor een MCN een dwingende opdracht. Hij moet de aanwijzing opvolgen.\n\nAanwijzingen VR, SB en OVW mogen door de buurTRDL namens jou worden afgegeven. Als hij dit gedaan heeft, moet hij de treinen die een aanwijzing hebben, afseinen aan jou.\n\nN.B.: Een aanwijzing STS mag nooit namens jou worden afgegeven.  Je moet de zekerheid hebben dat de betrokken MCN  van de trein stilstaat voor het sein waar je de aanwijzing STS voor moet afgeven.'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Aanwijzing STS'),
                      BodyText(
                          indents: 0,
                          text:
                              'Er zijn verschillende situaties denkbaar waarbij je een MCN een aanwijzing stoptonend sein moet afgeven om zo het treinverkeer op gang te houden. Denk bijvoorbeeld aan een wissel- of sectiestoring. Een aanwijzing STS moet bij een storing worden afgegeven voor bediende seinen en seinen voorzien van de toevoeging A en voor seinen zonder P. Voor P-seinen op de vrije baan wordt geen STS afgegeven.\n\nWanneer je met STS rijdt, neem je de beveiliging over en zal je als TRDL dus alle stappen die de beveiliging neemt, zelf moeten maken.\n\nVoordat je een aanwijzing STS afgeeft, doe je het volgende:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text: '- Sluit de tegengestelde rijweg uit;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Stuur infra en/of wissels en leg infra en/of wissels vast. Denk ook aan brug, grendel, vrijgave, beweegbaar kruis.;'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Vul de aanwijzing STS in;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Overtuig je ervan dat de betrokken MCN van de trein stilstaat voor het betrokken sein. Dit doe je door middel van de drie U’s: U bent..., U staat... en U gaat... Twee vragen en één mededeling. Bij de laatste “U” vertel je de MCN naar welk spoor je hem leidt en hoe hij daar gaat komen;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Afhankelijk van de reden van het afgeven van de aanwijzing STS kun je de MCN ook nog een schouwopdracht (sectiestoring) of controleopdracht (wisselstoring) geven;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Infomeer de MCN over de rijweg en eventuele bijzonderheden hierin.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'N.B.: Een aanwijzing STS is voor een MCN een vertrekbevel. Als je andere mededelingen hebt aan de MCN, bijvoorbeeld dat hij zich binnen moet melden, geef je die aan de MCN vóórdat je de aanwijzing STS afgeeft.'),
                      SizedBoxH(),
                      InsertImage(
                          image:
                              'assets/images/achtergrond_info/incidenten/aanwijzingSTS.png'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Aanwijzing VR'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Een aanwijzing VR wordt afgegeven om de MCN de opdracht te geven om voorzichtig te rijden met een snelheid van ten hoogste 40 km/u, dan wel met een door jou aangegeven lagere snelheid. De MCN rijdt niet harder dan 40 km/u, maar ook met zo\'n snelheid dat hij deze tot stilstand kan brengen, als de veiligheid dit vordert. Mogelijke redenen voor het afgeven van deze aanwijzing kunnen zijn:'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- Toestand van de baan;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text: '- Onbevoegden of dieren langs de baan.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Bij de aanwijzing VR heb je de keuze om \'van km... tot km...\' in te vullen en \'bij nadering van km...\'. De laatste optie gebruik je vaak als de reden waarom je de aanwijzing afgeeft, zich beweegt. Denk aan personen of dieren.'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Aanwijzing SB'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Een aanwijzing snelheid begrenzen wordt afgegeven als er een onregelmatigheid is aan de spoorbaan. In eerste instantie zal je na een melding van een onregelmatigheid aan de baan een aanwijzing VR afgeven. Pas nadat de door het MKS-BO opgeroepen storingsdienst jou een snelheid doorgeeft, mag je overgaan op het afgeven van een aanwijzing SB. Er is geen maximumsnelheid verbonden aan een aanwijzing SB, zoals bij een aanwijzing VR wel het geval is.\n\nHet kan zijn dat je eerst met een aanwijzing VR 40 km/u rijdt en nadat de storingsdienst ter plaatse is geweest overgaat op een aanwijzing SB met dezelfde snelheid. Wat is dan het verschil, zal je je afvragen? Men zegt weleens dat de MCN bij een aanwijzing SB met zijn ogen dicht mag rijden als hij zeker weet dat hij de gevraagde snelheid rijdt. Bij een aanwijzing VR kan dat niet, omdat hij altijd voor ieder gevaarpunt moet kunnen stoppen.'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Aanwijzing OVW'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Een aanwijzing OVW wordt afgegeven als er een storing is aan een overweg of overpad. Dit kan zijn omdat de overweg \'gestoord\' is gemeld op de overwegmelder, omdat hij langer dan vijf minuten een trein aankondigt of als de installatie beschadigd is of niet goed functioneert.\n\nEen MCN zal de betrokken overweg behoedzaam naderen met maximaal 10 km/u, zal een herhaald fluitsein geven en stoppen als de veiligheid van het wegverkeer dat vordert. Hij herneemt de snelheid als de eerste as van de trein de overweg is gepasseerd.'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Invullen aanwijzing'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Zoals je op de afbeelding ziet, zijn er maar acht vakjes beschikbaar op de aanwijzing om de overwegen in te vullen. Bij meer dan acht overwegen is het niet verboden deze op dezelfde aanwijzing te schrijven, de werkwijze geeft hierover geen uitsluitsel. Het is ook mogelijk een tweede formulier te gebruiken, maar daar zit een gevaar in. Je moet dan werken met twee formulieren en je loopt dan risico dat je een formulier overslaat.'),
                      SizedBoxH(),
                      InsertImage(
                          image:
                              'assets/images/achtergrond_info/incidenten/aanwijzingFormulier.png'),
                      SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*CARD #9*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(title: 'Spoorweb'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Na de melding van een calamiteit alarmeer je de MKS-Backoffice. De medewerker BO vult alle gegevens in Spoorweb en met een druk op de knop alarmeert en informeert hij alle belanghebbenden. Met SpoorWeb zijn ProRail en haar ketenpartners in staat om doorlopend een gedeeld beeld van de operationele situatie met betrekking tot afwijkingen in de treindienst en beschikbaarheid van het spoor te bewaken. Bij afwijkingen zullen vooraf gedefinieerde afhandelscenario\'s ingezet worden waarbij betrokkenen ondersteund kunnen worden in hun rolvastheid en taakuitvoering. Doordat voor alle betrokkenen de voortgang en prognose van deelprocessen te volgen is, zullen afwijkingen op de dienstregeling voorspelbaarder en efficiënter afgehandeld worden.\n\nDoor de gestructureerde vastlegging van de afhandeling is het mogelijk om alle relevante gebeurtenissen en de afhandeling hiervan te evalueren en verbeterpunten direct door te voeren in de vastgelegde scenario\'s.\n\nSpoorWeb versnelt dankzij haar inzet het herstel van een stabiele treindienst en vergroot zodoende de punctualiteit en veiligheid van het Nederlandse spoor.'),
                      SizedBoxH(),
                      InsertImage(
                          image:
                              'assets/images/achtergrond_info/incidenten/spoorwebKaart.png'),
                    ],
                  ),
                ),
              ),
              /*CARD #10*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(title: 'Treinincidentscenario'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Een Treinincidentscenario of TIS is een gestandaardiseerde typering voor een incident op of rond een spoorweg in Nederland. Het is in feite de spoorwegvariant van de Gecoordineerde Regionale Incidentbestrijdings Procedure. Een TIS regelt de benodigde opschaling, zowel van de hulpdiensten als van de spoorwegmaatschappij en spoorbeheerder (ProRail). De opschaling van de hulpdiensten kan per regio of locatie verschillen.\n\nDe scenario’s zijn verdeeld in 5 groepen:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1, text: '- TIS 1: Verstoorde treindienst;'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- TIS 2: Brand;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text: '- TIS 3: Aanrijding of ontsporing;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1, text: '- TIS 4: Gevaarlijke stoffen;'),
                      SizedBoxH(),
                      BodyText(indents: 1, text: '- TIS 5: Bommelding;'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Elke hoofdgroep is onderverdeeld in 4 subgroepen, oplopend van de kleinste omvang (1) naar de meest complexe situatie (4).'),
                      SizedBoxH(),
                      SubTitleText(subtitle: 'Verstoring Treindienst'),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 1.1'),
                        children: [
                          SubTitleText(subtitle: 'Verstoring treindienst'),
                          BodyText(
                              indents: 0,
                              text:
                                  '(Door bijv. ontsporing zonder slachtoffers, defect materieel (gestrande trein), stroomuitval, uitval infra, slechte weersomstandigheden, dringende ongeplande werkzaamheden, stilleggen treindienst op bevel OHD.\n\nDe incidenttypen OHD bij trein, hinder buitenland, gestrande trein langs perron, storing in 1 wissel, zijn toegevoegd aan TIS1.1 ondanks dat deze niet altijd tot een verstoring van de treindienst leiden. De eerste coördinatie vindt plaats bij de MKS).'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Ondanks de verstoring kan de treindienst nagenoeg volgens plan worden uitgevoerd. Wel structurele vertraging van 5 minuten of meer, gedurende 30 minuten of langer;\n\n- 1 of meerdere treinen kunnen worden opgeheven. Bij uitval van complete treinserie(s) volgt opschaling naar TIS 1.2;\n\n- Ontsporing kan plaatsvinden door reizigers- of goederentrein zonder gevaarlijke stoffen;\n\n- Mogelijk evacuatiescenario\'s reizigers uit gestrande treinen uitvoeren.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 1.2'),
                        children: [
                          SubTitleText(subtitle: 'Verstoring treindienst'),
                          BodyText(
                              indents: 0,
                              text:
                                  '(Door bijv. ontsporing zonder slachtoffers, defect materieel, stroomuitval, uitval infra, slechte weersomstandigheden, dringende ongeplande werkzaamheden, stilleggen treindienst op bevel OHD).'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Door de verstoring kan de treindienst niet meer volgens plan worden uitgevoerd. Wel structurele vertraging van 5 minuten of meer gedurende 30 minuten of langer. Een of meerdere treinseries vallen uit;\n\n- Ontsporing kan plaatsvinden door reizigers- of goederentrein zonder gevaarlijke stoffen;\n\n- Mogelijk evacuatiescenario\'s reizigers uit gestrande treinen uitvoeren.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 1.3'),
                        children: [
                          SubTitleText(subtitle: 'Verstoring treindienst'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Totale versperring. Treindienst niet meer uitvoerbaar\n\n(Door bijv. ontsporing zonder slachtoffers, defect materieel (gestrande trein), stroomuitval, uitval infra, slechte weersomstandigheden, dringende ongeplande werkzaamheden, stilleggen treindienst op bevel OHD.\n\nDe incidenttypen OHD bij trein, hinder buitenland, gestrande trein langs perron, storing in 1 wissel, zijn toegevoegd aan TIS1.1 ondanks dat deze niet altijd tot een verstoring van de treindienst leiden. De eerste coördinatie vindt plaats bij de MKS.)'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Ondanks de verstoring kan de treindienst nagenoeg volgens plan worden uitgevoerd. Wel structurele vertraging van 5 minuten of meer, gedurende 30 minuten of langer;\n\n- 1 of meerdere treinen kunnen worden opgeheven. Bij uitval van complete treinserie(s) volgt opschaling naar TIS 1.2;\n\n- Ontsporing kan plaatsvinden door reizigers- of goederentrein zonder gevaarlijke stoffen;\n\n- Mogelijk evacuatiescenario\'s reizigers uit gestrande treinen uitvoeren.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 1.4'),
                        children: [
                          SubTitleText(subtitle: 'Verstoring treindienst'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Totale versperring. Treindienst niet meer mogelijk in minimaal één post of druk knooppunt.\n\n(Door bijv. uitval centraal infrabediensysteem of stilleggen treindienst op bevel OHD.)'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Door de verstoring kan de treindienst binnen het hele bediengebied van een post niet meer worden uitgevoerd;\n\n- Mogelijk evacuatiescenario\'s reizigers uit gestrande treinen uitvoeren.'),
                        ],
                      ),
                      SubTitleText(subtitle: 'Brand'),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 2.1'),
                        children: [
                          SubTitleText(subtitle: 'Brand'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Automatische brandmelding (op station) in tunnel, zonder stilstaande trein;\n\n- Rookontwikkeling en/of vuurverschijnselen bij en/of onder trein op vrije baan of emplacement;\n\n- Brand in station(sgebouw) niet uitslaand;\n\n- Brand nabij of in het spoor met mogelijke invloed op het treinverkeer (bijv. bielzen- of bermbrand).'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Afhankelijk van de benaderingswijze van de brandweer een kortdurende verstoring van de treindienst;\n\n- Mogelijk hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor;\n\n- LET OP: Het stilleggen op last van de brandweer, naar aanleiding van een brand buiten het spoorterrein is een treinincident uit de categorie 1.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 2.2'),
                        children: [
                          SubTitleText(subtitle: 'Brand'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Brand (op station) in tunnel, zonder stilstaande trein;'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Mogelijk hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor;\n\n- Mogelijk evacuatiescenario\'s reizigers uit gestrande treinen uitvoeren.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 2.3'),
                        children: [
                          SubTitleText(subtitle: 'Brand'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Brand in trein, uitslaand op vrije baan of emplacement.'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Brand, waardoor geen of beperkt treinverkeer mogelijk is op een of meerdere sporen;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor;\n\n- Elektrocutieveilige werkplek kan in opdracht hulpdiensten of ICB opgestart worden, complete lijnuitschakelijk (CLU) wordt automatisch opgestart;\n\n- Mogelijk evacuatiescenario\'s reizigers uit gestrande treinen uitvoeren.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 2.4'),
                        children: [
                          SubTitleText(subtitle: 'Brand'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- (Automatische) brand(melding) in tunnel, met stilstaande trein;\n\n- Brand in trein uitslaand op station of in tunnel;\n\n- Treinstilstand in tunnel, zonder spraakverbinding met het treinpersoneel.'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Brand, waardoor geen of beperkt treinverkeer mogelijk is op een of meerdere sporen;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor;\n\n- Elektrocutieveilige werkplek kan in opdracht hulpdiensten of ICB opgestart worden, complete lijnuitschakelijk (CLU) wordt automatisch opgestart;\n\n- Mogelijk evacuatiescenario\'s reizigers uit gestrande treinen uitvoeren.'),
                        ],
                      ),
                      SubTitleText(
                          subtitle:
                              'Aanrijding, botsing en ontsporing met slachtoffers'),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 3.1'),
                        children: [
                          SubTitleText(
                              subtitle:
                                  'Aanrijding, botsing en ontsporing met slachtoffers'),
                          BodyText(
                              indents: 0,
                              text: 'Aanrijding trein of rangeerdeel met:'),
                          BodyText(indents: 1, text: '- persoon of groot vee;'),
                          BodyText(indents: 1, text: '- (brom-)fietser;'),
                          BodyText(
                              indents: 1, text: '- infra-element of object;'),
                          BodyText(
                              indents: 1,
                              text:
                                  '- klein wegvoertuig, zoals auto, motor, bestelbus of tractor (aantoonbaar zonder slachtoffers).'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Kans op enkele slachtoffers en emotioneel getroffen personen;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor;\n\n- Overwegen in storing, mogelijk licht beschadigde infra en materieel;\n\n- Mogelijk gestrande treinen met evacuatiescenario\'s en impact op dienstregeling.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 3.2'),
                        children: [
                          SubTitleText(
                              subtitle:
                                  'Aanrijding, botsing en ontsporing met slachtoffers'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Aanrijding rangeerdelen onderling;\n\n- Hard koppelen (trein met trein of rangeerdeel);\n\n- Aanrijding trein of rangeerdeel met klein wegvoertuig (met slachtoffers of slachtoffers onbekend);\n\n- Aanrijding met groot wegvoertuig, zoals een bus of vrachtauto (zonder slachtoffers).'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Kans op enkele slachtoffers en emotioneel getroffen personen;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor;\n\n- Mogelijk licht beschadigde infra en materieel (op eigen kracht weg na hersporing);\n\n- Mogelijk gestrande treinen met evacuatiescenario\'s en impact op dienstregeling;\n\n- Geringe belangstelling media.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 3.3'),
                        children: [
                          SubTitleText(
                              subtitle:
                                  'Aanrijding, botsing en ontsporing met slachtoffers'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Ontsporing met slachtoffers in trein, of aanrijding trein met:'),
                          BodyText(
                              indents: 1,
                              text:
                                  '- Trein of rangeerdeel;\n\n- Groot wegvoertuig (met slachtoffers of slachtoffers onbekend);\n\nwaardoor wagenstellen niet vervormd, gekanteld of gestapeld zijn en de bovenleidinggroep niet uitgevallen is.'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Kans op meerdere slachtoffers en emotioneel getroffen personen;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor;\n\n- Zwaar beschadigde infra en materieel;\n\n- Mogelijk gestrande treinen met evacuatiescenario\'s en grote impact op dienstregeling;\n\n- Grote belangstelling media.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 3.4'),
                        children: [
                          SubTitleText(
                              subtitle:
                                  'Aanrijding, botsing en ontsporing met slachtoffers'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Ontsporing met slachtoffers in trein, of aanrijding trein met:'),
                          BodyText(
                              indents: 1,
                              text:
                                  '- Trein of rangeerdeel;\n\n- (Groot) wegvoertuig;\n\nwaardoor wagenstellen vervormd, gekanteld of gestapeld zijn of de bovenleidinggroep uitgevallen is.'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Kans op vele slachtoffers en emotioneel getroffen personen;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor;\n\n- Zwaar beschadigde infra en materieel;\n\n- Mogelijk gestrande treinen met evacuatiescenario\'s en grote impact op dienstregeling;\n\n- Grote belangstelling media;\n\n- Elektrocutieve werkplek kan in opdracht hulpdienstn of ICB opgestart worden, complete lijnuitschakeling (CLU) wordt automatisch opgestart.'),
                        ],
                      ),
                      SubTitleText(subtitle: 'Gevaarlijke stoffen'),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 4.1'),
                        children: [
                          SubTitleText(subtitle: 'Gevaarlijke stoffen'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Kleine uitstroom van gevaarlijke stof.\n\nUitstroom van onbekende stof.\n\nGEVI-code begint met 7.\n\nAanrijding/ontsporing goederentrein met gevaar op uitstroom gevaarlijke stoffen'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Uitingsvorm: druppelen, sissen, stinken, geringe lekkage afsluiter;\n\n- Impact: brongebied, de directe omgeving van het incident. Bijv. het gebied direct rondom de incidentwagen;\n\n- Mogelijk milieuschade;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 4.2'),
                        children: [
                          SubTitleText(subtitle: 'Gevaarlijke stoffen'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Brand in goederentrein waarbij gevaarlijke stoffen betrokken zijn'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Uitingsvorm: druppelen, sissen, stinken, geringe lekkage afsluiter;\n\n- Impact: brongebied, de directe omgeving van het incident. Bijv. het gebied direct rondom de incidentwagen;\n\n- Mogelijk milieuschade;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 4.3'),
                        children: [
                          SubTitleText(subtitle: 'Gevaarlijke stoffen'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Grote uitstroom van gevaarlijke stof waarvan GEVI-code begint met 3, 4, 5, 6, 8 of 9'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Kans op meerdere slachtoffers in het bron- en effectgebied;\n\n- Impact: brongebied, de directe omgeving van het incident en er is gevaar voor de volksgezondheid buiten het brongebied;\n\n- Mogelijk milieuschade;\n\n- Elektrocutieveilige werkplek kan in opdracht hulpdiensten of ICB opgestart worden, complete lijnuitschakeling (CLU) wordt automatisch opgestart;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 4.4'),
                        children: [
                          SubTitleText(subtitle: 'Gevaarlijke stoffen'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Grote uitstroom van gevaarlijke stof waarvan GEVI-code begint met 2'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Kans op meerdere slachtoffers in het bron- en effectgebied;\n\n- Impact: brongebied, de directe omgeving van het incident en er is gevaar voor de volksgezondheid buiten het brongebied, door snelle verspreiding van het gas;\n\n- Mogelijk milieuschade;\n\n- Elektrocutieveilige werkplek kan in opdracht hulpdiensten of ICB opgestart worden, complete lijnuitschakeling (CLU) wordt automatisch opgestart;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor.'),
                        ],
                      ),
                      SubTitleText(subtitle: 'Verdacht object/gedrag, bom'),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 5.1'),
                        children: [
                          SubTitleText(subtitle: 'Verdacht object/gedrag, bom'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Bommelding;\n\n- Verdacht gedrag;\n\n- Verdacht voorwerp langs de vrije baan;\n\n- Vondst niet gesprongen conventionele explosieven op spoorterrein.'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Door politie geevalueerd en serieus bevonden;\n\n- Kans op impact treindienst.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 5.2'),
                        children: [
                          SubTitleText(subtitle: 'Verdacht object/gedrag, bom'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Bomvinding of verdacht voorwerp in trein op de vrije baan'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Beperkt'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Door politie geevalueerd en serieus bevonden;\n\n- Kans op impact treindienst.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 5.3'),
                        children: [
                          SubTitleText(subtitle: 'Verdacht object/gedrag, bom'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Bomvinding of verdacht voorwerp: ernstig\n\n- In trein op station;\n\n- In tunnel of station.'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Door politie geevalueerd en serieus bevonden;\n\n- Kans op langdurige buitendienststelling ivm opkomst en onderzoek EOC.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 5.4'),
                        children: [
                          SubTitleText(subtitle: 'Verdacht object/gedrag, bom'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Bomexplosie:\n\n- In trein, station of tunnel;\n\n- In een trein op station of in een tunnel.'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Ernst'),
                          BodyText(indents: 0, text: 'Zeer ernstig'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Kans op vele slachtoffers;\n\n- Veel schade aan infra, bijv. tunnel langdurig buiten dienst;\n\n- Elektrocutieveilige werkplek kan in opdracht hulpdiensten of ICB opgestart worden, complete lijnuitschakeling (CLU) wordt automatisch opgestart;\n\n- Hulpverleners in het spoor, waardoor buitengebruik nemen en mogelijk buitendienststelling van het spoor.'),
                        ],
                      ),
                      SubTitleText(subtitle: 'Bijzondere situaties'),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('BHV'),
                        children: [
                          SubTitleText(subtitle: 'Bijzondere situaties'),
                          BodyText(
                              indents: 0,
                              text:
                                  'Extern incident met impact op spoorsector\n\n- Brand, gevaarlijke stoffen of terreurincident, waarbij een station, vrije baan, emplacement of andere spoorlocatie in het effectgebied ligt.'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Alarmering van verschillende BHV organisaties;\n\n- Uitvoering van interne BHV plannen.'),
                        ],
                      ),
                      ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(8.0),
                        title: Text('TIS 1.0'),
                        children: [
                          SubTitleText(subtitle: 'Bijzondere situaties'),
                          BodyText(indents: 0, text: 'Diverse situaties'),
                          SizedBoxH(),
                          SubTitleText(subtitle: 'Kenmerk'),
                          BodyText(
                              indents: 0,
                              text:
                                  '- Aanmaken dossier in SpoorWeb;\n\n- Treffen logistieke maatregelen.'),
                        ],
                      ),
                      SizedBoxH(),
                      SubTitleText(
                          subtitle: 'Incidentenonderzoek bij Verkeersleiding'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Veiligheid is een belangrijk deel van jouw werk als TRDL. Jij en je collega medewerkers van Verkeersleiding voeren in de productie veiligheidkritische activiteiten (VKA) uit.\n\nOndanks alles kan er toch een incident ontstaan waarbij de veiligheid in het geding is en kan een handeling van een van de medewerkers medebepalend zijn geweest voor het verloop van de gebeurtenissen. Het is belangrijk om deze te melden zodat we ervan kunnen leren. Zo kunnen we verbeteracties doen en procedures optimaliseren. Hiervoor is een proces ingericht, met standaard vragenlijst en begeleidingsmateriaal.\n\nHet doel van het melden, onderzoeken en analyseren van incidenten is om hiervate leren en om preventieve maatregelen te kunnen opstellen zodat herhaling voorkomen wordt. Om dit onderzoek mogelijk te maken, is in de procesbeschrijvin vastgelegd:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Hoe en bij wie de verantwoordelijkheden zijn belegd;\n\n- Hoe uitvoering is geregeld.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'De startvoorwaarde voor het incidentonderzoek is het optreden van een van onderstaande categorieën incidenten:'),
                      SizedBoxH(),
                      BodyText(
                          indents: 1,
                          text:
                              '- Gevaarlijke voorvallen;\n\n- Ongevallen\n\n- Bijna ongevallen\n\n- Situaties met verhoogd risico.'),
                      SizedBoxH(),
                      BodyText(
                          indents: 0,
                          text:
                              'Aan de hand van zeven typen incidenten wordt gekeken of het handelen van een medewerker van Verkeersleiding de directe of indirecte oorzaak van het ontstaan (of de afhandeling) van een incident is. Daarnaast worden alle incidenten die binnen NCBG zijn opgetreden onderzocht. De beschrijving van de zeven typen incidenten, waarbij incidentonderzoek standaard wordt uitgevoerd door ProRail Verkeersleiding, vind je in het Exceldocument \'Proces Incidentenonderzoek VL\' op SharePoint.\n\nNa een incident is het de taak van de OvD-V om te evalueren, in gesprek te gaan met de betrokkenen uit de operatie en de vragenlijst SpoorwegVeiligheid (SPV) en het begeleidingsformulier in te vullen en op te sturen. De afdeling Veiligheid, Onderzoek en Toezicht maakt in sommige gevallen een feitenrapportage en koppelt deze terug naar de OvD-V. Afhankelijk van de inhoud van de rapportage en de mogelijke maatregelen onderneemt de OvD-V in samenwerking van de afdeling Veiligheid actie om de maatregelen uit te voeren.\n\nN.B.: Binnen een veilige meldcultuur heeft het melden geen nadelige gevolgen voor de melder of degene over wie de melding gaat, tenzij er sprake is van verwijtbaar gedrag.'), //TODO: Document toevoegen!
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