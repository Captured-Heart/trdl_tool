import '/all_imports.dart';

class AIQuoVadisHotbox extends StatelessWidget {
  const AIQuoVadisHotbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIQuoVadisHotboxNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Quo Vadis & Hotbox',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Quo Vadis (WILD)',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Quo Vadis (WILD: Wheel Impact and Load Detection) is ontwikkeld voor het meten van de kwaliteit van verschillende componenten van de trein. In Nederland wordt het systeem ingezet voor het meten van gewichten van passerende treinen, het detecteren van scheefbelading en voor het bepalen van de kwaliteit van de wielen.\nQuo Vadis meet door middel van sensoren die doorbuiging van en trillingen in de spoorstaaf meten aan beide benen.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_1.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Wat meet Quo Vadis aan de trein:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Meettijdstip;\n- Snelheid trein;\n- Lengte trein;\n- Aantal assen;\n- Totaal gewicht;\n- Aantal voertuigen;\n- Materieeltype voertuig;\n- RFID tag voertuig;\n- Scheve belading voertuig;\n- Aslast as;\n- Diagonale onbalans draaistel;\n- Piekkracht wiel;\n- Etc.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_2.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Quo Vadis locaties',
                  ),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Gewichtsmodule',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De gewichtsmodule bepaalt het gewicht van een totale trein uit het gemeten gewicht van elke as. Na verzending van de gegevens naar de centrale database, worden de gegevens o.a. gebruikt voor het berekenen van de gebruiksvergoeding. Door een slimme koppeling met de gegevens van TROTS wordt door ProRail ook de belasting van de wissels bepaald.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_3.png',
                  ),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Wieldefect module',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Elk wiel wordt gecontroleerd op rondheid, vlakke plaatsen op het loopvlak ('vierkant wiel') en polygonisatie (uitbrokkeling van loopvlak of veelvoud van vlakke plaatsen).",
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_4.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Deze gegevens worden verstuurd naar de centrale database. Hiermee wordt direct inzicht verkregen in de onderhoudstoestand van de trein en wordt het onderhoud aangestuurd.\nVoor een unieke koppeling tussen meetgegevens en passerende treinen, zijn (veel) treinen en locomotieven voorzien van een RFID-tag (Radio Frequency Identification). NSR heeft al haar materieel voorzien van tags, maar niet alle vervoerders doen dat (bijv. goederenvervoerders). Bijna alle meetstations zijn voorzien van de mogelijkheid RFID tags automatisch uit te lezen en te koppelen.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_5.png',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_6.png',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_7.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  const SubTitleText(
                    subtitle: 'GSM-R oproepen van Quo Vadis',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        "Bij een te hoge aslast, een groot wieldefect, of een te scheef beladen wagon ontvang je als TRDL een oproep via GSM-R.\nDeze melding komt binnen via een 'normale' GSM-R oproep.\nOverschrijdingen in Quo Vadis worden ook automatisch doorgezet naar de veiligheidsdatabase PROMISE. Er wordt een zaaknummer aangemaakt met details. Deze wordt gematched met het logboek RBV monitoring.",
                  ),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Normen voor GSM-R oproep',
                  ),
                  Table(
                    border: TableBorder.all(),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: const <TableRow>[
                      TableRow(
                        children: <TableTextBold>[
                          TableTextBold(text: 'Actieve signalering'),
                          TableTextBold(text: 'Waare'),
                          TableTextBold(text: 'Actie'),
                          TableTextBold(text: 'Achtergrond'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'Piekkracht'),
                          TableText(text: '700 kN*'),
                          TableText(
                            text:
                                'Trein wordt aan de kant genomen bij de eerste gelegenheid waar de trein het hoofdspoor kan verlaten.',
                          ),
                          TableText(
                            text:
                                'Zeer ernstige schade aan het wiel en verhoogde kans dat de wielband van het wiel af loopt. Tevens kans op ernstige schade aan de infra door bijv. het hamerende effect van een vlakke plaats op de spoorstaaf.',
                          ),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'Aslast'),
                          TableText(text: '30 ton**'),
                          TableText(
                            text:
                                'Trein wordt aan de kant genomen bij de eerste gelegenheid waar de trein het hoofdspoor kan verlaten.',
                          ),
                          TableText(
                            text:
                                'Ernstige schade aan het spoor, vooral bij de overgang van kunstwerken met de aarden baan.',
                          ),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'Scheve belading'),
                          TableText(text: 'Ratio 2,33'),
                          TableText(
                            text:
                                'Trein wordt aan de kant genomen bij de eerste gelegenheid waar de trein het hoofdspoor kan verlaten.',
                          ),
                          TableText(
                            text:
                                'Bij maximale verkanting in het spoor en deze verhouding tussen de linker- en de rechterkant van de wagon, gaat de wagon kantelen.',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const BodyText(
                    indents: 1,
                    text:
                        '* Op de Betuweroute 750 kN.\n** Op de Betuweroute 32,5 ton.',
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Opbouw alarmbericht',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        'Een alarmbericht is op de volgende manier opgebouwd:',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 1,
                    text:
                        '- "Er volgt een alarm"\n- "van" (plaatsnaam begin baanvak) "naar" (plaatsnaam einde baanvak);\n- "spoor" (naam van het spoor, bestaande uit twee letters);\n- "alarmtype" (omschrijving type alarm);\n- "asnummer" (getal welke het asnummer aangeeft, t.o.v. eerste as trein);\n- "ielzijde" ("rechts" of "links");\n- "toets hekje om te bevestigen";\n- "bevestigd"',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        'De volgorde van het afspelen van de alarmen wordt als volgt bepaald:',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 1,
                    text:
                        '- Alarmen worden per voertuig genoemd;\n- Prioritering: Voertuig, As, Wiel.',
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Opmerkingen',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        'Bij meerdere defecten per trein/wagen worden de alarmmeldingen direct, zonder melding, achter elkaar afgespeeld. De oproep moet altijd bevestigd worden door middel van het intoetsen van het hekje. Doe je dit niet, dan zal het bericht worden herhaald. Dit gebeurt vijf seconden na afloop van het bericht. Het bericht wordt maximaal drie keer afgespeeld.\n\nOok als je het bericht meerdere malen hebt beluisterd, moet je bevestigen door het intoetsen van het hekje. Doe je dit niet dan zal Quo Vadis opnieuw de oproep plaatsen.\n\nAls je voor een trein een melding ontvangt van het Quo Vadis detectiesysteem, handel je deze storing af volgens de Werkwijze TRDL.',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_8.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  const SubTitleText(
                    subtitle: 'Hotbox (MDS HBD/HWD)',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        "Een ontsporing van een trein kan worden voorkomen door de temperatuur van de aspotten en de wielen te weten. Dit is wat een Hotbox doet. Bijv.: Bij een hete aspot kan 'smeerolie' weglekken waardoor de wiellagers niet of onvoldoende worden gesmeerd. Het wiellager kan hierdoor defect raken, waarna het wiel los komt te zitten van de as of de as breekt.\nVastzittende remmen kunnen de oorzaak zijn van hete wielen. Uiteindelijk kan hierdoor de wielband losraken en kan de trein mogelijk ontsporen. Om eventuele problemen te voorkomen zijn sensoren ingebouwd in het spoor.",
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_9.png',
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Hotbox detectie',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        "Hotbox detectie meet de temperaturen van aspotten en wielen met infrarood sensoren. Deze sensoren bestaan uit infrarood camera's die kijken naar de aspotten, remschijven en wielen. Uit de beelden die geregistreerd worden, bepaalt het meetstation of er sprake is van een heet- of warmgelopen aspot, wiel of rem.",
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_10.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_11.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_quo_vadis_hotbox_12.png',
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Onderdelen Hotbox',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        'Hotbox detectie bestaat uit de volgende systeemcomponenten in het spoor:',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 1,
                    text:
                        '- Een holle dwarsligger waarop infrarood temperatuursensoren gemonteerd worden;\n- Twee infrarood temperatuursensoren voor de aspot temperatuurmetingen gemonteerd op de holle dwarsligger;\n- Een infrarood temperatuursensor voor de wieltemperatuurmetingen gemonteerd op de holle dwarsligger;\n- Drie wielsensoren of assentellers (WS1, WS2 en WS3), waarbij de middelste op de holle dwarsligger is gemonteerd;\n- Een UHF-tagreader geinstalleerd ter hoogte van de holle dwarsligger ten behoeve van het uitlezen van RFID-tags op spoorvoertuigen;\n- Een systeemkast naast de baan (MDS) voor verwerking van meetdata en communicatie.',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        'De temperatuursensoren worden door de wielsensoren geactiveerd. De UHF-tagreader leest de RFID-tag op het spoorvoertuig. Met een RFID-tag is een spoorvoertuig uniek te identificeren. De meetgegevens worden naar de apparatuur in de MDS verstuurd voor verwerking. De temperatuurmetingen worden gekoppeld aan de gelezen RFID-tag en vervolgens doorgestuurd naar de ProRail-server. Hotbox detectie werkt rijrichting onafhankelijk.',
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'GSM-R oproepen van Hotbox',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        'Bij een heetmelding geconstateerd door het Hotbox detectiesysteem ontvang je als TRDL een oproep via GSM-R.\nDeze melding komt binnen als een normale GSM-R oproep.\nOverschrijdingen in Hotbox worden ook automatisch doorgezet naar de veiligheidsdatabase PROMISE. Er wordt een zaaknummer aangemaakt met details. Deze wordt gematched met het logboek RBV monitoring.',
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext:
                        'Normen voor GSM-R oproep (let op: HSL heeft eigen normen, niet in beheer bij ProRail)',
                  ),
                  const SizedBoxH(),
                  Table(
                    border: TableBorder.all(),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: const <TableRow>[
                      TableRow(
                        children: <TableTextBold>[
                          TableTextBold(text: 'Actieve signalering'),
                          TableTextBold(text: 'Waare'),
                          TableTextBold(text: 'Actie'),
                          TableTextBold(text: 'Achtergrond'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'Hete as'),
                          TableText(text: '110 ॰C'),
                          TableText(
                            text:
                                'Trein direct beheerst tot stilstand brengen.',
                          ),
                          TableText(
                            text:
                                'Het lagervet in de as wordt zo vloeibaar dat dit uit de as loopt en de as vervolgens vast loopt.',
                          ),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'Warme as'),
                          TableText(text: '90 ॰C'),
                          TableText(
                            text:
                                'Trein wordt in overleg met de MCN tot stilstand gebracht op de eerste plek waar dit kan.',
                          ),
                          TableText(
                            text:
                                "As dreigt zich te ontwikkelen tot 'hete as'.",
                          ),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'Heet wiel'),
                          TableText(text: '375 ॰C'),
                          TableText(
                            text:
                                'Trein direct beheerst tot stilstand brengen.',
                          ),
                          TableText(
                            text: 'Wielband kan van het wiel af lopen.',
                          ),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'Warm wiel'),
                          TableText(text: '290 ॰C*'),
                          TableText(
                            text:
                                'Trein wordt in overleg met de MCN tot stilstand gebracht op de eerste plek waar dit kan.',
                          ),
                          TableText(
                            text:
                                "Wielband kan vervormen en zich ontwikkelen tot 'heet wiel'.",
                          ),
                        ],
                      ),
                    ],
                  ),
                  const BodyText(
                    indents: 1,
                    text:
                        '* Betuweroute: Locatie Elten (Duitse grens) heeft een warm wiel norm van 200 ॰C (grensbaanvak overeenkomst)',
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Opbouw alarmbericht',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 1,
                    text:
                        '- "Er volgt een alarm";\n- "van" (plaatsnaam begin baanvak) "naar" (plaatsnaam einde baanvak);\n- "spoor" (naam van het spoor, bestaande uit 2 letters);\n- "alarmtype" (omschrijving type alarm);\n- "asnummer" (getal welke het asnummer aangeeft, t.o.v. eerste as trein);\n- "wielzijde" ("rechts" of "links");\n- "toets hekje om te bevestigen";\n- "bevestigd".',
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Opmerkingen',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        'Bij meerdere defecten per trein/wagen worden de alarmmeldingen direct, zonder melding, achter elkaar afgespeeld. De oproep moet altijd bevestigd worden door middel van het intoetsen van het hekje. Doe je dit niet, dan zal het bericht worden herhaald. Dit gebeurt vijf seconden na afloop van het bericht. Het bericht wordt maximaal drie keer afgespeeld.\n\nOok als je het bericht meerdere malen hebt beluisterd, moet je bevestigen door het intoetsen van het hekje. Doe je dit niet dan zal Hotbox opnieuw de oproep plaatsen.\n\nAls je voor een trein een melding ontvangt van het Hotbox detectiesysteem, handel je deze storing af volgens de Werkwijze TRDL.',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIQuoVadisHotboxNavigation extends StatelessWidget {
  const AIQuoVadisHotboxNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_quo_vadis_hotbox) {
          await Navigator.pushNamed(context, 'ww_quo_vadis_hotbox');
        } else if (result == PopupNavigation.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
        } else if (result == PopupNavigation.ai_vaste_rem) {
          await Navigator.pushNamed(context, 'ai_vaste_rem');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_quo_vadis_hotbox,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Quo Vadis & Hotbox',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_incidenten_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_vaste_rem,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Vaste Rem',
          ),
        ),
      ],
    );
  }
}
