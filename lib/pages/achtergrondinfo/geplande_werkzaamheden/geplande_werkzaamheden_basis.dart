import 'package:trdl_tool/all_imports.dart';

class GeplandeWerkzaamhedenBasisAchtergrond extends StatelessWidget {
  const GeplandeWerkzaamhedenBasisAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
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
              //DIENSTREGELING CARD
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
                              title: 'Geplande werkzaamheden - basisinformatie',
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
                                  'Geplande werkzaamheden zijn werkzaamheden die van tevoren gepland zijn en waarvoor alle benodigde zaken geregeld zijn. Als aan spoorweginfrastructuur onderhoud moet worden uitgevoerd, hebben we te maken met verschillende regelgevingen ten aanzien van veilig werken. Voor alle geplande werkzaamheden waarbij medewerking van de treindienstleider is vereist, moet je in het bezit zijn van een Werkplekbeveiligingsinstructie (WBI/WECO). Je toetst de WBI/WECO en bent verantwoordelijk voor de goede uitvoering van de taken die je in een WBI/WECO zijn toebedeeld.',
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
                                  'Als treindienstleider stel je railinfracapaciteit beschikbaar. De verantwoordelijke voor de veiligheid buiten neemt vervolgens maatregelen voor zijn eigen veiligheid en de veiligheid van de werkenden. Hierover maak je afspraken met de verantwoordelijke voor de veiligheid buiten.',
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
                                  'De taakverantwoordelijke voor de veiligheid buiten kan worden uitgevoerd door verschillende functionarissen, bijvoorbeeld:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Voor werken aan de railinfrastructuur:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '* Leider Werkplek Beveiliging (LWB)',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Voor werken aan/in materieel:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '* Storingsmonteur (stmt of ATB monteur)',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '* Voorman reiniging van een reinigingsbedrijf (HRD/TreinSchoon)',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '* Specialistische reiniging (graffiti en projectmatige reinigingsklussen)',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '* Monteur technische dienst',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '* Machinist',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '* Wagenmeester',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '* Etc.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Voor veilig werken bij treinincidenten:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '* Algemeen Leider (AL)',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Voor inpecties aan infra en/of materieel:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: 'Inspecteur ILT',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //KORTE WERKZAAMHEDEN CARD
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
                              subtitle:
                                  'Geplande werkzaamheden in meerdere periodes - aanvang in overleg met de treindienstleider',
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
                                  'De komende jaren wordt er een stijging van zowel de vervoersvraag als de benodigde onttrekking voor onderhoud verwacht. Dit geeft aanleiding om de balans tussen verkeer en beheer te herstellen. De behoefte is om vaker gebruik te gaan maken van buitendienststellingen die in verhouding staan tot de werkzaamheden en onttrekking. Hierbij wordt gebruik gemaakt van de mogelijkheden die de bestaande veiligheidsregelgeving biedt. Deze werkwijze is het resultaat van onderzoek dat in samenwerking tussen VL, AM en de aannemer is uitgevoerd naar mogelijkheden om de ruimte op het spoor efficiënter te benutten.',
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
                                  'Het betreft hier werkzaamheden waarbij het werk- en/of nevenspoor zo lang mogelijk \'buiten dienst\' blijft, maar - als de treindienst daarom vraagt - in dienst genomen kan worden met als doel hinder voor het treinverkeer te voorkomen/tot het minimum te beperken. In dit geval zullen de werkploegen zich naar een veilige wijkplaats verplaatsen op last van de LWB. Op werkplekken waar wel doorgewerkt dient te worden (bijv. laspotten), zal op een andere wijze de werkplekbeveiliging zijn geborgd (safety fence = fysieke afscheiding werkende-trein).',
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
                                  'Deze werkwijze maakt het mogelijk voor de aannemers om werkzaamheden veilig, maar in kleinere onttrekkingen uit te voeren met minder treinhinder.',
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
                                  'Kortdurende werkzaamheden volgens WBI, aanvang in overleg met de treindienstleider',
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
                                  'Dit zijn werkzaamheden waarvoor wel alle voorwaarden in een WBI/WECO zijn vastgelegd. De aanvang de van de werkzaamheden gaat altijd in overleg tussen treindienstleider en LWB.',
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
                                  'Aandachtspunten bij werkzaamheden waarbij aanvang in overleg met de treindienstleider is:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Sluit nooit een WECO af terwijl er zich nog een trein op de in de WBI benoemde Railinfracapaciteit bevindt, tenzij dit een stilstaande trein is die volgens de WBI is toegestaan;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Geef de in de WBI geplande tijd voor \'periodes in overleg met de treindienstleider\' onverkort;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Honoreer een aanvraag volgens de WBI binnen de hiervoor genoemde periode, voor \'periodes in overleg met de treindienstleider\', binnen 30 minuten na aanvraag;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Je hebt de bevoegdheid om voorrang te verlenen aan deze werkzaamheden en mag hiervoor dus treinen vertragen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Registreer de ontstane vertragingen onder vermelding van het WBI-nummer;',
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
                                  'Werkzaamheden zonder gevolgen voor de treindienstleider',
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
                                  'Dit zijn werkzaamheden waarbij geen medewerking van de treindienstleider gevraagd wordt en/of noodzakelijk is. Denk hierbij aan werkzaamheden aan het perron, maar ook aan bijvoorbeeld het maaien van bermen.',
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
                                  'Kortdurende werkzaamheden aan de baan of apparatuur',
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
                                  'Kortdurende werkzaamheden aan de bedienapparatuur of de beveiliging zijn werkzaamheden die:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- de veiligheid niet aantasten;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- de tijdige rijweginstelling niet (mogen) hinderen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- door de postmanager, TM en/of OvD-V aan de verkeersleidingspost aan de treindienstleider zijn gemeld.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //WBI CARD
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
                              subtitle:
                                  'De werkplekbeveiligingsinstructie (WBI)',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Aanvraag',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Bij alle geplande werkzaamheden wordt vooraf door de opdrachtnemer een WBI aangevraagd. Deze kunnen worden verkregen bij de regionale afdelingen Infrabeschikbaarheid. De WBI bevat de veiligheidsplanning voor de werkzaamheden. De aanvraag wordt uitgewerkt door het kantoor IBP.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Een WBI kan zonder datum en tijd zijn opgesteld, voor werkzaamheden waarvan de datum en het tijdstip redelijkerwijs niet van te voren kan worden vastgesteld. De goedgekeurde WBI moet drie werkdagen voor aanvang van de werkzaamheden afgestemd en beschikbaar zijn bij de uitvoerende partij(en) en bij de treindienstleider.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Communicerend treindienstleider',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'In de WBI/WECO kun je worden aangewezen als communicerend treindienstleider. Je kunt je voorstellen dat werkzaamheden soms plaatsvinden op plekken die \'werkplekoverschrijdend\' zijn. Dit zou in de communicatie tot gevaar kunnen leiden, vandaar dat beslon is om in dit soort situaties één treindienstleider aan te wijzen die de communicatie met de LWB verzorgt. De communicerend treindienstleider verzorgt dan de communicatie met de andere betrokken treindienstleiders. Communicatie tussen de machinist en de andere treindienstleiders blijft wel mogelijk zonder tussenkomst.',
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
                                  'Aanpassen communicerend treindienstleider',
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
                                  'Het is mogelijk om de treindienstleider in deze rubriek aan te passen. De reden hiervan kan zijn dat de oorspronkelijke toewijzing door de BTD-planner, aan de hand van eigenaarschap van de meeste verhinderingsmaatregelen, niet praktisch is in de uitvoering. Denk bijvoorbeeld aan het verlenen van medewerking of beproeven van zaken. D.m.v. een penwijziging kan dit worden aangepast. Dit dien je dan wel af te stemmen met de collega treindienstleider die de rol van communicerend treindienstleider overneemt. Ook moet je het doorgeven aan de LWB en eventueel andere betrokken treindienstleiders.',
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
                                  'Verhinderingen op de grens van buitendienststelling',
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
                                  'Verhinderingen worden gebruikt om te voorkomen dat er onbedoeld een rijweg ingesteld kan worden naar de exacte buitendienststelling en materieel onbedoeld de buitendienststelling vanuit de flank kan verlaten.',
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
                                  'Bij het voorschrijven van die verhinderingen om te voorkomen dat materieel onbedoeld de buitendienststelling vanuit de flank kan verlaten, zullen de volgende regels in acht worden genomen:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- In de WBI onder kolom “Maatregelen Treindienstleider” worden verhinderingen opgenomen die de grens van een buitendienststelling markeren. Hierbij wordt aangegeven in welke stand het element dient te worden vastgelegd. De elementen zullen worden verhinderd met een VHB;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Wissels met een in de BVS voorgeschreven stand mogen tijdens de werkzaamheden in een andere stand worden vastgelegd. Na de werkzaamheden moet het wissel weer in de voorgeschreven stand worden achtergelaten',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Meerdere werkzaamheden tegelijkertijd',
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
                                  'Het komt voor dat een treindienstleider niet één, maar meerdere werkzaamheden tegelijkertijd moet uitvoeren. Dit hoeft geen probleem te zijn, als de werkdruk maar niet te hoog komt te liggen.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Tijdens de planning van werkzaamheden wordt gecontroleerd of de WBI-aanvragen het werkdrukniveau van de treindienstleider niet overschrijden. Er wordt hier gekeken naar het totaal aan WBI\’s op een bepaald tijdstip, waarna bepaald wordt of het haalbaar is of niet.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: 'Mocht er door omstandigheden toch te veel werkdruk bij de treindienstleider komen te liggen, dan kan in overleg met de betrokken aannemers en verkeersleiding naar een oplossing worden gezocht.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'FAB (Flexibele Aanvangstijd Buitendienststelling)',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Het kan voorkomen dat werkzaamheden moeten beginnen terwijl er nog vertraagde treinen onderweg zijn. In dit geval wordt er gebruik gemaakt van de FAB. Hierin staan in stroomschema de aanvullende afspraken tussen vervoerders, verkeersleiding en asset management (AM). De start van een dubbelsporige buitendienststelling kan 15 minuten schuiven met behoud van het recht op 4 uur doorlooptijd. AM heeft een inspanningsverplichting het werk toch op de oorspronkelijke tijd af te ronden.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Indien de vertraging van de laatste trein op het laatste knooppunt voor een baanvak versperrende buitendienststelling groter is dan 15 minuten dan handel je als volgt:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Laat deze trein niet vertrekken;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Meld dit aan de DVL.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De afspraak met vervoerders wordt opgenomen in een TAD.',
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
                                  'De uitgangspunten zijn:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Indien de vertraging op/voor het laatste knooppunt voor de werkzaamheden groter is dan 15 minuten dat wordt de trein opgeheven. Reizigers en Personeel worden tussen de laatste knooppunten vervoerd met taxi/bus;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Formule: Tijdligging voor de aanvangstijd WBI + 15 minuten = uiterste vertrektijd;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De vervoerders accepteren daarbij mogelijke consequenties voor de opstart treindienst van de volgende dag;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Indien de vertraging, groter dan 15 minuten, wordt opgelopen tussen het laatste knooppunt en de buitendienststelling is er sprake van een gestrande trein en is het aan de operatie (ORT = OCCR Regie Team) hiervoor een oplossing te vinden;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- In alle andere denkbare scenario’s is het operationele OvD-S besluit leidend;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Het staat vervoerders natuurlijk vrij om proactief bij te sturen op de laatste verbinding.',
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
                            height: 400.0,
                            child: Image.asset(
                              'assets/images/achtergrond/ontrekkingBesluit.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //LWB CARD
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
                              subtitle:
                                  'LWB',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Binnen het gebied waarop de werkplekbeveiliging van toepassing is, heeft de LWB voor het aspect veiligheid (aanrijd- en electrocutiegevaar) de leiding over al het personeel dat een veiligheidstaak uitoefent. Hij onderhoudt het contact met de TRDL, de CVB\’s, VHM en BBD en bij SL met ploegleider of WV conform regelgeving van de opdrachtgever.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De LWB heeft hierbij de volgende (kern)taken:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: SubTitleText(
                              subtitle: '1. Het aantoonbaar beoordelen van de aangeleverde veiligheidsinstructie op veilige uitvoerbaarheid en beargumenteren van de beoordeling als de maatregelen niet voldoen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '2. Het aantoonbaar (laten)verzorgen van de veiligheidsinstructie aan uitvoerenden;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '3. Het (laten) uitvoeren van de in de WBI voorgeschreven veiligheidsmaatregelen door een LLV, BBD of gecertificeerd medewerker seinwezen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '4. Het houden van toezicht op de naleving van veiligheidsmaatregelen, zelf het goede voorbeeld geven en het escaleren naar de WB-U en stopzetten van het werk als de veiligheid dit vereist;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '5. Het evalueren van de veiligheidsmaatregelen en de organisatie na afloop van de werkzaamheden en het doorgeven van de resultaten aan de WB-U/V&G-coördinator uitvoeringsfase.',
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
                                  'Zelfsignalerende kortsluitlans',
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
                                  'Een kortsluitlans wordt gebruikt om bij werkzaamheden in een baanvak een veilige werkplek te creëren. Een tussen de rails geplaatste kortsluitlans beïnvloedt het spoorstroomloopsysteem zoals een trein dat doet, waardoor de seinen \'afvallen\'. De rijrichting op vrije baan sporen kan nu niet meer gekeerd worden. Hierdoor worden treinen gedwongen te stoppen en kan men veilig werken.',
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
                                  'De zelfsignalerende kortsluitlans is uitgerust met een veiligheidsidentificatie. De identificatie geeft aan of de lans zodanig is geplaatst, dat er inderdaad een kortsluiting tussen beide spoorstaven tot stand is gekomen.',
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
                                  'De kortsluitlans signaleert niet',
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
                                  'Een geplaatste ZKL die niet signaleert, kan een gevaarlijke situatie opleveren. Vooral als men er buiten vanuit gaat dat de ZKL in de beveiliging signaleert. Als je constateert dat een ZKL niet (meer) signaleert, dan handel je als volgt:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Attendeer de LWB op het niet signaleren van de zelfsignalerende kortsluitlans;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Informeer de Meldkamer Spoor/Back Office;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Registreer het incident als veiligheidsincident.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Werkplekbeveiliging met de zelfsignalerende kortsluitlans (ZKL) in combinatie met rijweginstelling',
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
                                  'Een van de mogelijkheden voor een LWB om een werkplek te beveiligen, is met de kortsluitlans in combinatie met rijweginstelling. Deze veiligheidsmaatregel kan alleen worden toegepast in samenwerking met de treindienstleider.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Er moet wel aan een aantal voorwaarden worden voldaan. Deze zijn om te voorkomen dat er onveilige situaties ontstaan bij het gebruik van deze veiligheidsmaatregel.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Kijk voor de voorwaarden in de werkwijze treindienstleider.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Er wordt gebruik gemaakt van twee soorten kortsluitlansen. De ZKL mét remote control (afstandsbediening) en zonder remote control. De LWB kan de ZKL mét remote control al eerder plaatsen zonder dat deze zich signaleert. Hij kan op veilig afstand het sein kan laten bedienen door de treindienstleider en dan met de afstandsbediening  kortsluiting maken in het spoor.',
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
                              text: 'Op sommige baanvakken en emplacementen in Nederland voert men werkzaamheden uit binnen een vaste werkzone (werkzones). Dit zijn een soort vrijgavegebieden waarbinnen gewerkt wordt. Dus altijd met vaste veiligheidsmaatregelen.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Uitleg over werkzones en bijbehorende informatie vind je in de achtergrondinformatie bij \‘Geplande werkzaamheden – verdieping: werkzones\’.',
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
                            height: 400.0,
                            child: Image.asset(
                              'assets/images/achtergrond/zklPlaatsen.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                    ],
                  ),
                ),
              ),
              //WERKTREINEN CARD
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
                              subtitle:
                                  'Werktreinen',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Een werktrein is een trein die rijdt op een voor werkzaamheden ter beschikking gesteld deel van de railinfrastructuur. Een werktrein wordt bediend (gereden) door een werktreinmachinist. Voor een werktrein is altijd een Voertuig Instructie (VTI) voorhanden waarin staat hoe de (werktrein)machinist moet handelen op de betrokken railinfra. De (werktrein)machinist moet altijd in het bezit zijn van deze VTI voordat hij mag gaan rijden. Ook is er voor elke werktrein een BBD , begeleider buitendienst gesteld spoor, aangewezen die de machinist opdrachten kan geven.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Een trein die ingezet gaat worden als werktrein zal normaliter als gewone (goederentrein/onderhoudsmachine) rijden tot aan de grens van de voor werkzaamheden beschikbaar gestelde railinfra. Vanaf dat punt wordt het een werktrein. Het is echter ook mogelijk om een bijzonder voertuig in te zetten op een overweg of speciaal inzetpunt en vanaf daar te gaan rijden als werktrein. Het is ook toegestaan om materieel bestemd voor werkzaamheden van te voren al te plaatsen (voor de railinfra ter beschikking is gesteld). Maar dat is altijd in samenspraak met de LWB.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Regels voor de werktrein:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Rijden op zicht;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Maximale snelheid in de nabijheid van personeel is 10 km/u;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Stoppen als de veiligheid dit noodzakelijk maakt.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'De LWB instrueert de BBD en (werktrein)machinist over:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De verplaatsingen van en de werkzaamheden uit te voeren met de werktrein;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De communicatie;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De aanwezigheid van mensen, obstakels en eventueel andere werktreinen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De VTI;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Bijzondere omstandigheden die van belang zijn voor het veilig rijden.',
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
                                  'Zie voor meer informatie: Toelaten werktreinen - achtergrondinformatie.',
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
                            height: 400.0,
                            child: Image.asset(
                              'assets/images/achtergrond/werkTrein.png',
                            ),
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
      ),
    );
  }
}
