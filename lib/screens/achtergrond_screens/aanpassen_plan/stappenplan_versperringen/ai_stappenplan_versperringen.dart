import '/all_imports.dart';

enum WhereToGoFromAIStappenplanVersperringen {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_stappenplan_versperringen,
  // ignore: constant_identifier_names
  ai_aanpassen_plan_main,
}

class AIStappenplanVersperringen extends StatelessWidget {
  const AIStappenplanVersperringen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIStappenplanVersperringen>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIStappenplanVersperringen result) async {
              if (result ==
                  WhereToGoFromAIStappenplanVersperringen.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIStappenplanVersperringen
                      .ww_stappenplan_versperringen) {
                await Navigator.pushNamed(
                    context, 'ww_stappenplan_versperringen',);
              } else if (result ==
                  WhereToGoFromAIStappenplanVersperringen
                      .ai_aanpassen_plan_main) {
                await Navigator.pushNamed(context, 'ai_aanpassen_plan_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIStappenplanVersperringen>>[
              const PopupMenuItem<WhereToGoFromAIStappenplanVersperringen>(
                value: WhereToGoFromAIStappenplanVersperringen.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIStappenplanVersperringen>(
                value: WhereToGoFromAIStappenplanVersperringen
                    .ww_stappenplan_versperringen,
                child: MenuItemContent(
                  icon: Icons.train,
                  text: 'WW Stappenplan Versperringen',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIStappenplanVersperringen>(
                value: WhereToGoFromAIStappenplanVersperringen
                    .ai_aanpassen_plan_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Aanpassen Plan',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Card>[
              /*CARD #1*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const <Widget>[
                      TitleText(
                        title: 'Stappenplan Versperringen Achtergrond',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Soms is het niet mogelijk om alle infra te kunnen gebruiken. Oorzaken kunnen zijn:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Defect infra-element;\n\n- Gestrande trein;\n\n- Aanrijdingen;\n\n- Weersomstandigheden.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Binnen een versperring zijn er drie fases:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- 1e Fase: Overgang van oorspronkelijk plan naar een nieuw, actueel plan;\n\n- 2e Fase: Het rijden volgens het nieuwe, actuele plan;\n\n- 3e Fase: De terugkeer naar het oorspronkelijke plan.',
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
                    children: const <Widget>[
                      SubTitleText(
                        subtitle: 'Verdelingsbesluit',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een verdelingsbesluit is een besluit dat gaat over de verdeling/herverdeling van de infra. Het besluit omvat een aantal verschillende velden:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Het gebied: Dit is het gebied waarover het verdeelbesluit wordt genomen;\n\n- Het aantal treinpaden dat per uur aan de vervoerders kan worden aangeboden. Verdeling in IC-, sprinter- en goederenpaden;\n\n- Tijdstip van ingaan.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een verdelingsbesluit staat niet van tevoren vast en is situatieafhankelijk. Het is dus elke keer anders. Een aantal voorbeelden:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Volledig isoleren van het gebied (ontkoppelen baanvak);\n\n- Deels isoleren van het gebied; een of meerdere sporen (deel van het baanvak) niet berijdbaar;\n\n- Minder treinen omdat de capaciteit voor een reguliere treindienst niet meer te realiseren is;\n\n- Het baanvak is niet meer berijdbaar voor alle (voor minder) materieeltypen;\n\n- Milieubeperkingen;\n\n- Afgekondigde stremming voor bepaalde bestemming(en) in het buitenland;\n\n- Afgekondigde stremming voor bepaalde ontvangststation(s) in het binnenland.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #3*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const <Widget>[
                      SubTitleText(
                        subtitle: 'Rol van de TRDL',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De TRDL probeert een volledig beeld te krijgen van de infrabeperking en eventuele andere beperkingen die van invloed kunnen zijn op de afhandeling van het incident. Je geeft aan hoeveel extra rijtijd de beperkingen vermoedelijk opleveren en wat de resterende mogelijkheden zijn in bijvoorbeeld opstelcapaciteit en eventuele doorwissel mogelijkheden. Het besluit om treinen stil te zetten bij de buurTRDL(s) komt altijd van de DVL.',
                      ),
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
                    children: const <Widget>[
                      SubTitleText(
                        subtitle: 'Werkwijze bij versperring',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Het verdelingsbesluit is een onderdeel van de afhandeling van een versperring. Voor het afhandelen van een versperring volgen de TRDL en de DVL een stappenplan wat begint bij het signaleren van de versperring en eindigt bij het weer opstarten van de normale dienstregeling. Hieronder vind je de verschillende stappen die doorlopen worden:',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Signaleren incident of verstoring',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'De DVL ontvangt een signaal van jou (alarmeer/informeerformulier).',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Eerste beeldvorming door TRDL en DVL',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'De DVL haalt het alarmeer/informeerformulier op bij jou. Samen met de DVL probeer je de infrabeperking en de eventuele andere beperkingen scherp te krijgen. Jullie gaan na welke mogelijkheden er zijn om een beheerste treindienst in stand te houden. Jullie kunnen besluiten te gaan ontkoppelen. De DVL logt de infrabeperking in SpoorWeb.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Vrijmaken verstoord gebied',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Je maakt het getroffen gebied vrij door (eventueel) gestrande treinen terug te halen (denk aan nieuw treinnummer).\n\nBinnen het gebied kunnen treinen:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Onder voorwaarden doorgevoerd (langs het incident);\n\n- Daadwerkelijk gestrand zijn;\n\n- Keren of teruggehaald worden.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Spoedmaatregelen',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            "De DVL neemt in overleg met de buurDVL en de VLC maatregelen om (verder) vollopen van de pplg's te voorkomen. De VLC kan aanvullende ontluchtingsmaatregelen nemen en buffert goederentreinen die onderweg zijn of leidt deze om.",
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Nadere beeldvorming door TRDL en DVL',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Je neemt met de DVL de stand van zaken door. De DVL logt de keringen van treinen in de 1e fase en logt de spoedmaatregelen.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Nemen verdelingsbesluit',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'De DVL neemt een concept verdelingsbesluit en communiceert dit met de VLC. De VLC kijkt of het verdelingsbesluit past bij de situatie in de rest van het land (eventuele impact op andere incidenten). Indien nodig logt de VLC het aangepaste verdelingsbesluit en geeft aan waarom het is aangepast.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Ontluchten',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'De DVL neemt maatregelen, i.o.m. buurDVL en VLC, om verder vollopen te voorkomen.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Kiezen versperringsmaatregel',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'De versperringsmaatregel wordt gekozen door de VLC en moet passen in het verdelingsbesluit. Indien er geen passende VSM beschikbaar is dan maakt de VLC een VSM op basis van het afwegingskader. De VLC maakt VSM definitief en zet toets uit bij DVL. De DVL geeft in SpoorWeb aan wat de eerste keringen conform VSM zijn.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Vrijmaken van het verstoorde gebied',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '- Je maakt i.o.m. de vervoerder het getroffen gebied vrij door gestrande treinen uit het getroffen gebied te halen. Gestrande treinen krijgen een nieuw nummer.\n\n- Je hebt de gestrande reizigerstreinen geïnventariseerd en aangegeven op het alarmeer/informeerformulier. Je geeft hierbij aan of de treinen:',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '* Doorgevoerd kunnen worden (langs de incident locatie)\n\n* Daadwerkelijk gestrand zijn (geen keermogelijkheid of bijv. een getrokken trein);\n\n* Gekeerd of teruggehaald kunnen worden.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De DVL voert overleg met de vervoerders. Hij maakt een nieuwe dienstregeling en verwerkt deze in het plan.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Toetsen versperringsmaatregel',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Je toetst op verzoek van de DVL de VSM.  Je geeft hierbij aan of en vanaf wanneer de versperringsmaatregel uitvoerbaar is. De VLC checkt of de voorgenomen maatregelen passen binnen het verdelingsbesluit. Daarnaast toetst de VLC de maatregel op corridorniveau/vervoersstromen. De DVL geeft vervolgens aan wanneer de post klaar is voor de VSM bij de VLC.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Toedelen versperringsmaatregel',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'De VLC deelt VSM toe.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Verwerken in de systemen',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'DVL past plan aan voor het eerstvolgende half uur. Vervolgens volgens de infraprognose voor maximaal 2 uur vooruit. Je past jouw plannen aan en licht alle betrokkenen in over het toepassen van de afhandelingsstrategie/VSM.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Monitoren nieuwe situatie - fase 2',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Na het toedelen van de versperringsmaatregel is er een nieuw actueel plan. In de tweede fase wordt de uitvoering van dat plan gemonitord voor DVL en VLC en waar nodig bijgestuurd. Tegelijkertijd wordt er gekeken wat er nodig is om terug te keren naar het oorspronkelijke plan. Na het toedelen van de VSM kijkt de VLC na hoeveel tijd deze tot een hinderklasse 2 incident leidt en logt dit in Spoorweb.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Maken opstartplan - fase 3',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Het opstartplan is het plan dat de overgang van het rijden volgens versperringsmaatregel naar het rijden volgens oorspronkelijk plan mogelijk maakt. Hierin wordt beschreven welke trein als eerste (volgens oorspronkelijk plan) zal gaan rijden. Daarnaast worden aanvullende maatregelen, zoals bijvoorbeeld overbrengen materieel, beschreven.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Triggers voor het maken van een opstartplan zijn informatie over het (verwachte) einde van het incident kunnen komen van:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Treindienstleiding;\n\n- Calamiteitenorganisatie;\n\n- Spoorwegondernemingen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De verkeersleiders toetsen een dergelijke trigger via MKS-BO bij de Algemeen Leider (AL). Nadat de AL de eindtijd bevestigd heeft, vraagt Verkeersleiding aan de spoorwegondernemingen om een opstartplan te maken.\n\nAls de prognose eindtijd wordt bijgesteld, wordt een nieuw opstartplan gemaakt.\n\nDe VLC analyseert mogelijke doorrijdvolgorde van de opgehouden treinen en meldt dit aan de DVL. De DVL licht je in over de afhandeling van de opgehouden treinen. De VLC geeft het opstartkader op treinserieniveau, de DVL maakt het opstartplan op treinnummerniveau en toetst het opstartplan bij de vervoerder(s). Bij akkoord wordt de VLC geïnformeerd, zodat deze het opstartplan kan toedelen.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Opstartplan uitvoeren',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Voor het opstartplan uitgevoerd kan worden, moet aan drie voorwaarden zijn voldaan:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Infra moet beschikbaar zijn (einde ICB);\n\n- Opstartbeperkingen zijn weggewerkt;\n\n- Opstartplan is toegedeeld.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Nadat aan deze 3 voorwaarden is voldaan:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            "- VLC logt 'opstarten mogelijk';\n\n- VLC en DVL maken werkafspraken.",
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Monitoren',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'De DVL en VLC monitoren direct weer na het opstarten van het oorspronkelijke plan. Vooral de eerste treinen verdienen bijzondere aandacht.',
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