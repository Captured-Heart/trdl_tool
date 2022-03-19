import 'package:trdl_tool/core/all_imports.dart';

class AIWerkzones extends StatelessWidget {
  const AIWerkzones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkzones',
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
                        title: 'Werkzones',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Werken met werkzones',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Op sommige baanvakken en emplacementen in Nederland voert men werkzaamheden uit binnen een vaste werkzone (werkzones). Dit zijn een soort vrijgavegebieden waarbinnen gewerkt wordt. Dus altijd met vaste veiligheidsmaatregelen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Werkzones zijn ingebouwd in de beveiliging en in Post 21 en bestaan uit een geheel aantal (Post 21) secties. Werkzones zijn bedoeld als vervanging van de kortsluitlans. Er zijn werkzones op een emplacement en werkzones op de vrije baan. Bediende vrije baan wordt beschouwd als een emplacement.',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Een emplacement werkzone bevat geen (onbediend) vrije baan spoor. Een emplacementswerkzone is maximaal even groot als het gebied dat door een beveiligingssysteem wordt beveiligd. Een vrije baan werkzone bevat minimaal een onbediend vrije baan spoor en kan delen van het emplacement.',
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
                      SubTitleText(
                        subtitle: 'Werkzoneschakelaar',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De bediening werkt volgens een geven-nemen principe waarbij de treindienstleider de werkzone via Post 21 geeft en de LWB de werkzone neemt door de schakelaar te draaien. Deze volgorde wordt door het systeem afgedwongen. Het is daardoor niet mogelijk een werkzone \'voortijdig\' te nemen of \'voortijdig\' terug te nemen. Indien de LWB voortijdig aan de werkzoneschakelaar heeft gedraaid, dan zal het systeem de geef-opdracht afwijzen. Deze situatie wordt uitsluitend gemeld als de geef-opdracht wordt afgewezen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als je de werkzone geeft, wordt door Post 21 gecontroleerd op rijwegen leidend naar de werkzone. Als die er niet zijn, wordt de geef-opdracht uitgevoerd.',
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
                    children: const [
                      SubTitleText(
                        subtitle: 'Signalering voor LWB',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De werkzoneschakelaars en indicatielampjes zijn gemonteerd in een werkzoneschakelaarkast die in de regel aangebracht is aan de buitenzijde van een relaishuis of op een frame in de nabijheid daarvan. De kast is voorzien van een deur met slot en is alleen te bedienen met het juiste type sleutel.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Iedere kast bevat acht werkzoneschakelaars op een rij. Behalve de werkzoneschakelaars en de indicatielampjes bevinden zich in de kast ook verlichting en een Overzicht werkzoneschakelaarsblad (OWZS-blad).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als de LWB de werkzone neemt, gaat het witte indicatielampje bij de schakelaar branden.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Om de werkzoneschakelaar te kunnen gebruiken, moet de LWB beschikken over:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Sleutel van de werkzoneschakelaarkast(en);',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Sleutel (van het juiste type) voor de werkzoneschakelaars. Er is een type sleutel voor alle werkzoneschakelaars.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Handheld Terminal',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De Handheld Terminal heeft via een GSM-R telefoon verbinding met het centrale Bev21 beveiligingssysteem. De communicatie met het Bev21 systeem is beveiligd (op eenzelfde manier als de communicatie tussen trein en Bev21 beveiligd is). De HHT fungeert slechts als doorgeefluik voor de invoer van opdrachten en de weergave van statussen; alle veiligheid gerelateerde toestanden worden uitsluitend in het centrale Bev21 systeem bewaard.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De HHT is voorzien van een scherm, een touchscreen, meestal gebruikt voor de invoer van opdrachten, en een toetsenbord, vooral voor de invoer van werkzone-id\'s.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De menustructuur is zo eenvoudig mogelijk gehouden, de gebruiker wordt door middel van een aantal schermen door de opdrachten geleid. Het hoofdmenu toont de volgende mogelijkheden:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Overzicht van de werkzones die de gebruiker in \'eigendom\' heeft en de blokkeringen die hij aangebracht heeft;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Opdrachten op een werkzone: nemen/teruggeven, blokkeren/deblokkeren, status opvragen, en eigendom overdragen/accepteren;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Opdrachten op een wissel: blokkeren/deblokkeren, opvragen toestand en bedienen van het wissel.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneSchakelaarkast.png',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/handheldTerminal.png',
                      ),
                      SizedBoxH(),
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
                      SubTitleText(
                        subtitle: 'Signalering voor TRDL',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je kunt de toestand van de werkzone aflezen aan de weergave van de werkzone-code en aan de weergave van de inliggende elementen. Dit is weergegeven in de onderstaande tabel en de screenshots eronder:',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneStatusTabel.png',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNormaal.png',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Normaal - In dienst',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneGegeven.png',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Gegeven - Beschikbaar',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneGenomen.png',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Genomen - Buiten dienst',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneGestoord.png',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Gestoord',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzonePreview.png',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Preview',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneVerhinderd.png',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Verhinderd',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #5*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Wisselsturing',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Er vindt geen wisselsturing plaats wanneer een werkzone wordt gegeven. Wissels in een werkzone kunnen niet worden bediend als de werkzone gegeven is (en niet genomen). Wissels in een buiten dienst gestelde werkzone kunnen uitsluitend d.m.v.  ‘gedelegeerd bedienen’ treindienstleider worden bediend. Bij gedelegeerd bedienen, bedient je het wissel op verzoek van de LWB. Dit principe geldt ook voor een inliggend grendel, bedienbaar kruis en Rijrichtingkering. Het gevraagde Overdracht ID is de naam van de werkzone. Hieronder is dit weergegeven in het bedienscherm en de regelinvoer.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Eiswissels',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'die in een buiten dienst gestelde werkzone liggen, kunnen niet omlopen als gevolg van het instellen van een rijweg langs een werkzone. De rijweg-opdracht zal daarom worden afgewezen. Indien de rijweginstelling toch nodig is, moet het eiswissel d.m.v. \'gedelegeerd bedienen\' eerst in de gewenste stand worden gelegd.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Verzoekwissels',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'die in een buiten dienst gestelde werkzone liggen, kunnen niet omlopen als gevolg van het instellen van een rijweg langs een werkzone.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Overige beperkingen/eigenschappen',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Overwegen en de aankondiging van overwegen worden niet overbrugd door de werkzoneschakelaar;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Vanaf een sein op de rand van de werkzone is rijweginstelling naar buiten mogelijk;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Rijweginstelling is niet mogelijk vanaf een sein in de werkzone;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Er kan een ATB-code aanwezig zijn in de werkzone, als het sein op de rand van de werkzone uit de stand stop is.',
                      ),
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
                      SubTitleText(
                        subtitle: 'Bezettingen in de werkzone',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Het systeem zal een geef-opdracht afwijzen indien er zich minimaal één spoorbezetting bevindt in de werkzone. Ten behoeve van het kunnen geven van een werkzone bij aanwezigheid van een geloodste trein of sectiestoring in de werkzone is deze controle bij het geven van de werkzone eventueel uit te schakelen met een dwangparameter \'Negeer spoorbezetting\'. Hiernaast is dit weergegeven in de regelinvoer.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een geef-opdracht met \'Negeer spoorbezetting\' is ook succesvol als de bezetting is op de laatste sectie(s) in de werkzone van een afgereden rijweg, tenzij (tenminste één van) die sectie(s) een wissel bevat(ten).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als een rijweg zover is afgereden dat er alléén sprake is van gele lijnen in de werkzone en er géén wissel in een gele lijn ligt, kan \'Negeer spoorbezetting\' worden gebruikt.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Voorbeelden met sectiestoringen waarbij \'Negeer spoorbezetting\' wel en niet succesvol zal zijn:',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNegeer1.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Spontane sectiebezetting. In dit geval kan \'Negeer spoorbezetting\' worden gebruikt.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNegeer2.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Spontane sectiebezetting. In dit geval kan \'Negeer spoorbezetting\' worden gebruikt.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNegeer3.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Achtergebleven bezetting van trein. In dit geval kan \'Negeer spoorbezetting\' worden gebruikt',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNegeer4.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Achtergebleven restrijweg van trein. Ook onder de “gele” secties zit nog een restrijweg. De restrijweg ligt in twee werkzones. De opdracht geef werkzone met “Negeer spoorbezetting” voor de werkzone waarin de wisselsecties liggen zal worden afgewezen, omdat sprake is van wisselsecties met een vastlegging onder de bezetting. De opdracht geef werkzone met “Negeer spoorbezetting” voor de werkzone waarin de \'groene\' sectie ligt wordt afgewezen omdat er sprake is van een vastlegging.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Verhindering op een element in de werkzone',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Bij het geven van een werkzone wordt niet gecontroleerd op een verhindering op een element in de werkzone. Bij het plaatsen van een verhindering op een element wordt niet gecontroleerd op de toestand van de werkzone.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext:
                            'Controle op conflicterend gebruik van elementen in de werkzone',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De geef-opdracht zal (in ieder van de onderstaande gevallen) worden afgewezen vanwege conflicterend gebruik van elementen in de werkzone, als:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Er elementen in de werkzone in gebruik zijn voor een rijweg. Dit geldt ook voor een elementen in gebruik voor een deels afgereden rijweg en een herroepen rijweg;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Een grendel in de werkzone is gegeven en/of genomen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Een VR-gebied dat (deels) overlapt met de werkzone is gegeven en/of genomen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Rijweg-instelling zal (in ieder van de onderstaande gevallen) worden afgewezen vanwege conflicterend gebruik van elementen in de werkzone als:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Er elementen van de rijweg in gebruik zijn voor een werkzone;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Hiervoor een eiswissel moet worden gestuurd en dit wissel is in gebruik voor een werkzone.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Het geven van een VR-gebied zal worden afgewezen als:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Een werkzone die (deels) overlapt met het VR-gebied is gegeven en/of genomen.',
                      ),
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
                      SubTitleText(
                        subtitle: 'WBI Uitvoeren',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'In de WBI moeten alle te geven werkzones worden opgenomen; dus ook die waar materieel staat opgesteld. De parameter \'negeer spoorbezetting\' kan niet worden opgenomen in de WBI.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'In het WBI-bedienvenster worden alle maatregelen en werkzones getoond. De opdracht-regels die zijn uitgevoerd of die niet uitgevoerd hoeven te worden omdat het gewenste resultaat van opdracht al is bereikt, worden grijs weergegeven. De opdracht-regels die nog niet zijn uitgevoerd of die niet uitgevoerd konden worden, worden zwart weergegeven.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als vanuit het WBI-planvenster of WBI-bedienvenster een WBI wordt gestart en er is een werkzone waarin een trein staat opgesteld, dan verschijnt er een melding dat het geven van de werkzone niet kon worden uitgevoerd. Men kan het geven van de werkzone opnieuw proberen, met of zonder de parameter “negeer spoorbezetting”. De melding verschijnt iedere keer als het geven van een werkzone mislukt (door een trein of door een rijwegvastlegging).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Indien men bij het geven van een van de werkzones voor “Ga verder” kiest, zal deze werkzone worden overgeslagen. Na de laatste geef opdracht, verschijnt er dan een “Let op” melding die aangeeft dat niet alle werkzones konden worden gegeven.',
                      ),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/wbiBedienVenster1.png',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/wbiBedienVenster2.png',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Werkzones in de BVS',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Detaillering van de signalering en van de plaats van de werkzoneschakelaars is per werkzone aangegeven in de tabel hieronder.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'In de kolom \'Opm.\' van de tabel worden de volgende begrippen gehanteerd:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- \'OF\': Dit betekent dat de betreffende werkzone meerdere schakelaars heeft;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- \'GC\': Dit betekent dat de werkzone overdragen wordt volgens Gedwongen Concept.',
                      ),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneTabel.png',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Werkzones op het WZO-blad',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Werkzones staan ook vermeld op het WZO-blad. De to-build en as-built versie van het WZO-blad zal worden beheerd in Raildocs.',
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