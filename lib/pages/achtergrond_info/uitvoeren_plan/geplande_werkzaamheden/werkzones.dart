import 'package:trdl_tool/all_imports.dart';

class WerkzonesAchtergrond extends StatelessWidget {
  const WerkzonesAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool'),
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
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Werkzones',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Werken met werkzones',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Op sommige baanvakken en emplacementen in Nederland voert men werkzaamheden uit binnen een vaste werkzone (werkzones). Dit zijn een soort vrijgavegebieden waarbinnen gewerkt wordt. Dus altijd met vaste veiligheidsmaatregelen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Werkzones zijn ingebouwd in de beveiliging en in Post 21 en bestaan uit een geheel aantal (Post 21) secties. Werkzones zijn bedoeld als vervanging van de kortsluitlans. Er zijn werkzones op een emplacement en werkzones op de vrije baan. Bediende vrije baan wordt beschouwd als een emplacement.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Een emplacement werkzone bevat geen (onbediend) vrije baan spoor. Een emplacementswerkzone is maximaal even groot als het gebied dat door een beveiligingssysteem wordt beveiligd. Een vrije baan werkzone bevat minimaal een onbediend vrije baan spoor en kan delen van het emplacement.',
                            ),
                          ),
                        ],
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
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Werkzoneschakelaar',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De bediening werkt volgens een geven-nemen principe waarbij de treindienstleider de werkzone via Post 21 geeft en de LWB de werkzone neemt door de schakelaar te draaien. Deze volgorde wordt door het systeem afgedwongen. Het is daardoor niet mogelijk een werkzone \'voortijdig\' te nemen of \'voortijdig\' terug te nemen. Indien de LWB voortijdig aan de werkzoneschakelaar heeft gedraaid, dan zal het systeem de geef-opdracht afwijzen. Deze situatie wordt uitsluitend gemeld als de geef-opdracht wordt afgewezen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Als je de werkzone geeft, wordt door Post 21 gecontroleerd op rijwegen leidend naar de werkzone. Als die er niet zijn, wordt de geef-opdracht uitgevoerd.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #3*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Signalering voor LWB',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De werkzoneschakelaars en indicatielampjes zijn gemonteerd in een werkzoneschakelaarkast die in de regel aangebracht is aan de buitenzijde van een relaishuis of op een frame in de nabijheid daarvan. De kast is voorzien van een deur met slot en is alleen te bedienen met het juiste type sleutel.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Iedere kast bevat acht werkzoneschakelaars op een rij. Behalve de werkzoneschakelaars en de indicatielampjes bevinden zich in de kast ook verlichting en een Overzicht werkzoneschakelaarsblad (OWZS-blad).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Als de LWB de werkzone neemt, gaat het witte indicatielampje bij de schakelaar branden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Om de werkzoneschakelaar te kunnen gebruiken, moet de LWB beschikken over:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Sleutel van de werkzoneschakelaarkast(en);',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Sleutel (van het juiste type) voor de werkzoneschakelaars. Er is een type sleutel voor alle werkzoneschakelaars.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Handheld Terminal',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De Handheld Terminal heeft via een GSM-R telefoon verbinding met het centrale Bev21 beveiligingssysteem. De communicatie met het Bev21 systeem is beveiligd (op eenzelfde manier als de communicatie tussen trein en Bev21 beveiligd is). De HHT fungeert slechts als doorgeefluik voor de invoer van opdrachten en de weergave van statussen; alle veiligheid gerelateerde toestanden worden uitsluitend in het centrale Bev21 systeem bewaard.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De HHT is voorzien van een scherm, een touchscreen, meestal gebruikt voor de invoer van opdrachten, en een toetsenbord, vooral voor de invoer van werkzone-id\'s.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De menustructuur is zo eenvoudig mogelijk gehouden, de gebruiker wordt door middel van een aantal schermen door de opdrachten geleid. Het hoofdmenu toont de volgende mogelijkheden:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Overzicht van de werkzones die de gebruiker in \'eigendom\' heeft en de blokkeringen die hij aangebracht heeft;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Opdrachten op een werkzone: nemen/teruggeven, blokkeren/deblokkeren, status opvragen, en eigendom overdragen/accepteren;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Opdrachten op een wissel: blokkeren/deblokkeren, opvragen toestand en bedienen van het wissel.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneSchakelaarkast.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/handheldTerminal.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #4*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Signalering voor Treindienstleider',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Je kunt de toestand van de werkzone aflezen aan de weergave van de werkzone-code en aan de weergave van de inliggende elementen. Dit is weergegeven in de onderstaande tabel en de screenshots eronder:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneStatusTabel.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNormaal.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Normaal - In dienst',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneGegeven.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Gegeven - Beschikbaar',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneGenomen.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Genomen - Buiten dienst',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneGestoord.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Gestoord',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzonePreview.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Preview',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneVerhinderd.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Verhinderd',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #5*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Wisselsturing',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Er vindt geen wisselsturing plaats wanneer een werkzone wordt gegeven. Wissels in een werkzone kunnen niet worden bediend als de werkzone gegeven is (en niet genomen). Wissels in een buiten dienst gestelde werkzone kunnen uitsluitend d.m.v.  ‘gedelegeerd bedienen’ treindienstleider worden bediend. Bij gedelegeerd bedienen, bedient je het wissel op verzoek van de LWB. Dit principe geldt ook voor een inliggend grendel, bedienbaar kruis en Rijrichtingkering. Het gevraagde Overdracht ID is de naam van de werkzone. Hieronder is dit weergegeven in het bedienscherm en de regelinvoer.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Eiswissels',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'die in een buiten dienst gestelde werkzone liggen, kunnen niet omlopen als gevolg van het instellen van een rijweg langs een werkzone. De rijweg-opdracht zal daarom worden afgewezen. Indien de rijweginstelling toch nodig is, moet het eiswissel d.m.v. \'gedelegeerd bedienen\' eerst in de gewenste stand worden gelegd.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Verzoekwissels',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'die in een buiten dienst gestelde werkzone liggen, kunnen niet omlopen als gevolg van het instellen van een rijweg langs een werkzone.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Overige beperkingen/eigenschappen',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Overwegen en de aankondiging van overwegen worden niet overbrugd door de werkzoneschakelaar;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Vanaf een sein op de rand van de werkzone is rijweginstelling naar buiten mogelijk;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Rijweginstelling is niet mogelijk vanaf een sein in de werkzone;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Er kan een ATB-code aanwezig zijn in de werkzone, als het sein op de rand van de werkzone uit de stand stop is.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #6*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Bezettingen in de werkzone',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Het systeem zal een geef-opdracht afwijzen indien er zich minimaal één spoorbezetting bevindt in de werkzone. Ten behoeve van het kunnen geven van een werkzone bij aanwezigheid van een geloodste trein of sectiestoring in de werkzone is deze controle bij het geven van de werkzone eventueel uit te schakelen met een dwangparameter \'Negeer spoorbezetting\'. Hiernaast is dit weergegeven in de regelinvoer.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Een geef-opdracht met \'Negeer spoorbezetting\' is ook succesvol als de bezetting is op de laatste sectie(s) in de werkzone van een afgereden rijweg, tenzij (tenminste één van) die sectie(s) een wissel bevat(ten).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Als een rijweg zover is afgereden dat er alléén sprake is van gele lijnen in de werkzone en er géén wissel in een gele lijn ligt, kan \'Negeer spoorbezetting\' worden gebruikt.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Voorbeelden met sectiestoringen waarbij \'Negeer spoorbezetting\' wel en niet succesvol zal zijn:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNegeer1.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Spontane sectiebezetting. In dit geval kan \'Negeer spoorbezetting\' worden gebruikt.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNegeer2.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Spontane sectiebezetting. In dit geval kan \'Negeer spoorbezetting\' worden gebruikt.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNegeer3.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Achtergebleven bezetting van trein. In dit geval kan \'Negeer spoorbezetting\' worden gebruikt',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 100.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneNegeer4.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Achtergebleven restrijweg van trein. Ook onder de “gele” secties zit nog een restrijweg. De restrijweg ligt in twee werkzones. De opdracht geef werkzone met “Negeer spoorbezetting” voor de werkzone waarin de wisselsecties liggen zal worden afgewezen, omdat sprake is van wisselsecties met een vastlegging onder de bezetting. De opdracht geef werkzone met “Negeer spoorbezetting” voor de werkzone waarin de \'groene\' sectie ligt wordt afgewezen omdat er sprake is van een vastlegging.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Verhindering op een element in de werkzone',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Bij het geven van een werkzone wordt niet gecontroleerd op een verhindering op een element in de werkzone. Bij het plaatsen van een verhindering op een element wordt niet gecontroleerd op de toestand van de werkzone.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Controle op conflicterend gebruik van elementen in de werkzone',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De geef-opdracht zal (in ieder van de onderstaande gevallen) worden afgewezen vanwege conflicterend gebruik van elementen in de werkzone, als:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Er elementen in de werkzone in gebruik zijn voor een rijweg. Dit geldt ook voor een elementen in gebruik voor een deels afgereden rijweg en een herroepen rijweg;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Een grendel in de werkzone is gegeven en/of genomen;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Een VR-gebied dat (deels) overlapt met de werkzone is gegeven en/of genomen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Rijweg-instelling zal (in ieder van de onderstaande gevallen) worden afgewezen vanwege conflicterend gebruik van elementen in de werkzone als:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Er elementen van de rijweg in gebruik zijn voor een werkzone;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Hiervoor een eiswissel moet worden gestuurd en dit wissel is in gebruik voor een werkzone.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Het geven van een VR-gebied zal worden afgewezen als:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Een werkzone die (deels) overlapt met het VR-gebied is gegeven en/of genomen.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #7*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'WBI Uitvoeren',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'In de WBI moeten alle te geven werkzones worden opgenomen; dus ook die waar materieel staat opgesteld. De parameter \'negeer spoorbezetting\' kan niet worden opgenomen in de WBI.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'In het WBI-bedienvenster worden alle maatregelen en werkzones getoond. De opdracht-regels die zijn uitgevoerd of die niet uitgevoerd hoeven te worden omdat het gewenste resultaat van opdracht al is bereikt, worden grijs weergegeven. De opdracht-regels die nog niet zijn uitgevoerd of die niet uitgevoerd konden worden, worden zwart weergegeven.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Als vanuit het WBI-planvenster of WBI-bedienvenster een WBI wordt gestart en er is een werkzone waarin een trein staat opgesteld, dan verschijnt er een melding dat het geven van de werkzone niet kon worden uitgevoerd. Men kan het geven van de werkzone opnieuw proberen, met of zonder de parameter “negeer spoorbezetting”. De melding verschijnt iedere keer als het geven van een werkzone mislukt (door een trein of door een rijwegvastlegging).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Indien men bij het geven van een van de werkzones voor “Ga verder” kiest, zal deze werkzone worden overgeslagen. Na de laatste geef opdracht, verschijnt er dan een “Let op” melding die aangeeft dat niet alle werkzones konden worden gegeven.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/wbiBedienVenster1.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/wbiBedienVenster2.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Werkzones in de BVS',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Detaillering van de signalering en van de plaats van de werkzoneschakelaars is per werkzone aangegeven in de tabel hieronder.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'In de kolom \'Opm.\' van de tabel worden de volgende begrippen gehanteerd:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- \'OF\': Dit betekent dat de betreffende werkzone meerdere schakelaars heeft;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- \'GC\': Dit betekent dat de werkzone overdragen wordt volgens Gedwongen Concept.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 150.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzoneTabel.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Werkzones op het WZO-blad',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Werkzones staan ook vermeld op het WZO-blad. De to-build en as-built versie van het WZO-blad zal worden beheerd in Raildocs.',
                            ),
                          ),
                        ],
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
