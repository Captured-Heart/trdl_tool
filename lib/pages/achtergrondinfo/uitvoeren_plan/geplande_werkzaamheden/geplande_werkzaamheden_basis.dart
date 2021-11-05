import 'package:trdl_tool/all_imports.dart';

class GeplandeWerkzaamhedenBasisAchtergrond extends StatelessWidget {
  const GeplandeWerkzaamhedenBasisAchtergrond({Key? key}) : super(key: key);

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
                              text: 'Geplande werkzaamheden zijn werkzaamheden die van tevoren gepland zijn en waarvoor alle benodigde zaken geregeld zijn. Als aan spoorweginfrastructuur onderhoud moet worden uitgevoerd, hebben we te maken met verschillende regelgevingen ten aanzien van veilig werken. Voor alle geplande werkzaamheden waarbij medewerking van de treindienstleider is vereist, moet je in het bezit zijn van een Werkplekbeveiligingsinstructie (WBI/WECO). Je toetst de WBI/WECO en bent verantwoordelijk voor de goede uitvoering van de taken die je in een WBI/WECO zijn toebedeeld.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Als treindienstleider stel je railinfracapaciteit beschikbaar. De verantwoordelijke voor de veiligheid buiten neemt vervolgens maatregelen voor zijn eigen veiligheid en de veiligheid van de werkenden. Hierover maak je afspraken met de verantwoordelijke voor de veiligheid buiten.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De taakverantwoordelijke voor de veiligheid buiten kan worden uitgevoerd door verschillende functionarissen, bijvoorbeeld:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
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
                      const SizedBoxH(),
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
                              text: '* Voorman reiniging van een reinigingsbedrijf (HRD/TreinSchoon)',
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
                              text: '* Specialistische reiniging (graffiti en projectmatige reinigingsklussen)',
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
                      const SizedBoxH(),
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
                      const SizedBoxH(),
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
                              text: '* Inspecteur ILT',
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
                              subtitle: 'WBI/WECO bij geplande werkzaamheden',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Voor geplande werkzaamheden aan ProRail-sporen is zoals gezegd een WBI/WECO beschikbaar, aangeleverd door de afdeling Werkplekbeveiliging. Bij geplande werkzaamheden spreken we over een Standaard WBI/WECO.  Een Standaard WBI/WECO bestaat uit één of meerdere werkplekken, waarbij minimaal één van deze werkplekken een vaste werkplek is. Daarnaast kunnen er werkplekken in de WBI/WECO in overleg met (IOM) de treindienstleider zitten ten behoeve van het in- en uitzetten van voertuigen, aanbrengen veiligheidsmiddelen. Én er kunnen werkplekken in de WBI/WECO zitten IOM treindienstleider ten behoeve van het uitvoeren van werkzaamheden. Bij hoge uitzondering kan het voorkomen dat een WBI/WECO in zijn geheel bestaat uit werkplekken IOM ten behoeve van werkzaamheden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Vaste werkplek in een Standaard WBI/WECO',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Bij een vaste werkplek is er een treinvrije periode gecreëerd in het plan, de infracapaciteit behorend bij deze werkplek is altijd gegarandeerd voor de aannemer.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'IOM ten behoeve van in- en uitzetten voertuigen in een standaard WBI/WECO',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Deze werkplek wordt enkel toegevoegd op WBI/WECO’s met daarin óók een vaste werkplek en is met name bedoeld voor het in- en uitzetten van voertuigen en/of het plaatsen of verwijderen van safety fence. Dit soort werkzaamheden vindt over het algemeen plaats aan het begin en aan het einde van de buitendienststelling en is zodoende alleen gegarandeerd in eerste en laatste 30 minuten van de buitendienststelling. Buiten deze periodes kan de werkplek door de LWB worden aangevraagd, maar heeft de treinenloop voorrang op de werkzaamheden. De genoemde tijdsperiode op de WBI dient altijd onverkort gegeven te worden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'IOM ten behoeve van werkzaamheden in een standaard WBI/WECO',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Deze werkplek is onderdeel van een WBI/WECO met daarin óók een vaste werkplek. Een dergelijke werkplek wordt door de aannemer vaak gebruikt om kleine werkzaamheden zonder prioriteit uit te voeren aan de railinfrastructuur. Er is géén treinvrije periode gecreëerd in het plan, de werkplek is dan ook niet gegarandeerd. Infracapaciteit wordt gegeven op basis van mogelijkheden in de treinenloop. De treinenloop heeft hierbij dus voorrang op de werkzaamheden. De benoemde tijdsperiode van 59 minuten staat fictief benoemd op de WBI/WECO. De tijdsperiode die gegeven wordt gebeurt in overleg tussen treindienstleider en LWB.​​​​​​​',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'WBI/WECO volledig IOM ten behoeve van werkzaamheden',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Het komt ook voor dat een WBI/WECO enkel bestaat uit één of meerdere werkplekken IOM ten behoeve van werkzaamheden. In dat geval gelden dezelfde regels als wanneer een werkplek IOM ten behoeve van werkzaamheden onderdeel is van een Standaard WBI/WECO. Ook in dit geval is er géén treinvrije periode gecreëerd in het plan en zijn de werkplekken niet gegarandeerd. Infracapaciteit wordt ook hier gegeven op basis van mogelijkheden in de treinenloop. Ook hier heeft de treinenloop dus voorrang op de werkzaamheden.',
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
                              'assets/images/achtergrond/werkzaamhedenSpoor.png',
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
                              subtitle: 'Werkzaamheden zonder gevolgen voor de treindienstleider',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Dit zijn werkzaamheden waarbij geen medewerking van de treindienstleider gevraagd wordt en/of noodzakelijk is. Denk hierbij aan werkzaamheden aan het perron, maar ook aan bijvoorbeeld het maaien van bermen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Kortdurende werkzaamheden aan de baan of apparatuur',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Kortdurende werkzaamheden aan de bedienapparatuur of de beveiliging zijn werkzaamheden die:',
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
                              text: '- de veiligheid niet aantasten;',
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
                              text: '- de tijdige rijweginstelling niet (mogen) hinderen;',
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
                              text: '- door de postmanager, TM en/of OvD-V van de verkeersleidingspost aan de TRDL zijn gemeld.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Uitvoering',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Afhankelijk van de genoemde gevolgen, geef je de werkuitvoerende de tijdstippen waar binnen de werkzaamheden mogen worden uitgevoerd. Je neemt geen veiligheidsmaatregelen. Indien zich na afloop van de werkzaamheden storingen voor doen, meld je deze direct bij de MKS/BO en de DVL.',
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
                              subtitle: 'De werkplekbeveiligingsinstructie (WBI)',
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
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Bij alle geplande werkzaamheden wordt vooraf door de opdrachtnemer een WBI aangevraagd. Deze kunnen worden verkregen bij de regionale afdelingen Infrabeschikbaarheid. De WBI bevat de veiligheidsplanning voor de werkzaamheden. De aanvraag wordt uitgewerkt door het kantoor IBP.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een WBI kan zonder datum en tijd zijn opgesteld, voor werkzaamheden waarvan de datum en het tijdstip redelijkerwijs niet van te voren kan worden vastgesteld. De goedgekeurde WBI moet drie werkdagen voor aanvang van de werkzaamheden afgestemd en beschikbaar zijn bij de uitvoerende partij(en) en bij de treindienstleider.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Infra Beschikbaarheid (IB)',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een WBI kan zonder datum en tijd zijn opgesteld, voor werkzaamheden waarvan de datum en het tijdstip redelijkerwijs niet van te voren kan worden vastgesteld. De goedgekeurde WBI moet drie werkdagen voor aanvang van de werkzaamheden afgestemd en beschikbaar zijn bij de uitvoerende partij(en) en bij de treindienstleider.',
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
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'In de WBI/WECO kun je worden aangewezen als communicerend treindienstleider. Je kunt je voorstellen dat werkzaamheden soms plaatsvinden op plekken die \'werkplekoverschrijdend\' zijn. Dit zou in de communicatie tot gevaar kunnen leiden, vandaar dat beslon is om in dit soort situaties één treindienstleider aan te wijzen die de communicatie met de LWB verzorgt. De communicerend treindienstleider verzorgt dan de communicatie met de andere betrokken treindienstleiders. Communicatie tussen de machinist en de andere treindienstleiders blijft wel mogelijk zonder tussenkomst.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Aanpassen communicerend treindienstleider',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Het is mogelijk om de treindienstleider in deze rubriek aan te passen. De reden hiervan kan zijn dat de oorspronkelijke toewijzing door de BTD-planner, aan de hand van eigenaarschap van de meeste verhinderingsmaatregelen, niet praktisch is in de uitvoering. Denk bijvoorbeeld aan het verlenen van medewerking of beproeven van zaken. D.m.v. een penwijziging kan dit worden aangepast. Dit dien je dan wel af te stemmen met de collega treindienstleider die de rol van communicerend treindienstleider overneemt. Ook moet je het doorgeven aan de LWB en eventueel andere betrokken treindienstleiders.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Verhinderingen op de grens van buitendienststelling',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Verhinderingen worden gebruikt om te voorkomen dat er onbedoeld een rijweg ingesteld kan worden naar de exacte buitendienststelling en materieel onbedoeld de buitendienststelling vanuit de flank kan verlaten.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Bij het voorschrijven van die verhinderingen om te voorkomen dat materieel onbedoeld de buitendienststelling vanuit de flank kan verlaten, zullen de volgende regels in acht worden genomen:',
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
                              text: '- In de WBI onder kolom \'Maatregelen Treindienstleider\' worden verhinderingen opgenomen die de grens van een buitendienststelling markeren. Hierbij wordt aangegeven in welke stand het element dient te worden vastgelegd. De elementen zullen worden verhinderd met een VHB;',
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
                              text: '- Wissels met een in de BVS voorgeschreven stand mogen tijdens de werkzaamheden in een andere stand worden vastgelegd. Na de werkzaamheden moet het wissel weer in de voorgeschreven stand worden achtergelaten',
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
                              text: 'Het komt voor dat een treindienstleider niet één, maar meerdere werkzaamheden tegelijkertijd moet uitvoeren. Dit hoeft geen probleem te zijn, als de werkdruk maar niet te hoog komt te liggen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Tijdens de planning van werkzaamheden wordt gecontroleerd of de WBI-aanvragen het werkdrukniveau van de treindienstleider niet overschrijden. Er wordt hier gekeken naar het totaal aan WBI’s op een bepaald tijdstip, waarna bepaald wordt of het haalbaar is of niet.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
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
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Indien de vertraging van de laatste trein op het laatste knooppunt voor een baanvak versperrende buitendienststelling groter is dan 15 minuten dan handel je als volgt:',
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
                              text: '- Laat deze trein niet vertrekken;',
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
                              text: '- Meld dit aan de DVL.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
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
                              text: 'De uitgangspunten zijn:',
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
                              text: '- Indien de vertraging op/voor het laatste knooppunt voor de werkzaamheden groter is dan 15 minuten dat wordt de trein opgeheven. Reizigers en Personeel worden tussen de laatste knooppunten vervoerd met taxi/bus;',
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
                              text: '- Formule: Tijdligging voor de aanvangstijd WBI + 15 minuten = uiterste vertrektijd;',
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
                              text: '- De vervoerders accepteren daarbij mogelijke consequenties voor de opstart treindienst van de volgende dag;',
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
                              text: '- Indien de vertraging, groter dan 15 minuten, wordt opgelopen tussen het laatste knooppunt en de buitendienststelling is er sprake van een gestrande trein en is het aan de operatie (ORT = OCCR Regie Team) hiervoor een oplossing te vinden;',
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
                              text: '- In alle andere denkbare scenario’s is het operationele OvD-S besluit leidend;',
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
                              text: '- Het staat vervoerders natuurlijk vrij om proactief bij te sturen op de laatste verbinding.',
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
                            height: 300.0,
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
                              subtitle: 'LWB',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Binnen het gebied waarop de werkplekbeveiliging van toepassing is, heeft de LWB voor het aspect veiligheid (aanrijd- en electrocutiegevaar) de leiding over al het personeel dat een veiligheidstaak uitoefent. Hij onderhoudt het contact met de TRDL, de CVB’s, VHM en BBD en bij SL met ploegleider of WV conform regelgeving van de opdrachtgever.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De LWB heeft hierbij de volgende (kern)taken:',
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
                              text: '1. Het aantoonbaar beoordelen van de aangeleverde veiligheidsinstructie op veilige uitvoerbaarheid en beargumenteren van de beoordeling als de maatregelen niet voldoen;',
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
                              text: '2. Het aantoonbaar (laten)verzorgen van de veiligheidsinstructie aan uitvoerenden;',
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
                              text: '3. Het (laten) uitvoeren van de in de WBI voorgeschreven veiligheidsmaatregelen door een LLV, BBD of gecertificeerd medewerker seinwezen;',
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
                              text: '4. Het houden van toezicht op de naleving van veiligheidsmaatregelen, zelf het goede voorbeeld geven en het escaleren naar de WB-U en stopzetten van het werk als de veiligheid dit vereist;',
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
                              text: '5. Het evalueren van de veiligheidsmaatregelen en de organisatie na afloop van de werkzaamheden en het doorgeven van de resultaten aan de WB-U/V&G-coördinator uitvoeringsfase.',
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
                              subtitle: 'ZKL',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een zelfsignalerende kortsluitlans wordt gebruikt om bij werkzaamheden in een baanvak een veilige werkplek te creëren. Een tussen de rails geplaatste kortsluitlans beïnvloedt het spoorstroomloopsysteem zoals een trein dat doet, waardoor de seinen \'afvallen\'. De rijrichting op vrije baan sporen kan nu niet meer gekeerd worden. Hierdoor worden treinen gedwongen te stoppen en kan men veilig werken.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De zelfsignalerende kortsluitlans is uitgerust met een veiligheidsidentificatie. De identificatie geeft aan of de lans zodanig is geplaatst, dat er inderdaad een kortsluiting tussen beide spoorstaven tot stand is gekomen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'De kortsluitlans signaleert niet',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een geplaatste ZKL die niet signaleert, kan een gevaarlijke situatie opleveren. Vooral als men er buiten vanuit gaat dat de ZKL in de beveiliging signaleert. Als je constateert dat een ZKL niet (meer) signaleert, dan handel je als volgt:',
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
                              text: '- Attendeer de LWB op het niet signaleren van de zelfsignalerende kortsluitlans;',
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
                              text: '- Informeer de Meldkamer Spoor/Back Office;',
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
                              text: '- Registreer het incident als veiligheidsincident.',
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
                              text: 'Een van de mogelijkheden voor een LWB om een werkplek te beveiligen, is met de kortsluitlans in combinatie met rijweginstelling. Deze veiligheidsmaatregel kan alleen worden toegepast in samenwerking met de treindienstleider.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Er moet wel aan een aantal voorwaarden worden voldaan. Deze zijn om te voorkomen dat er onveilige situaties ontstaan bij het gebruik van deze veiligheidsmaatregel.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Kijk voor de voorwaarden in de werkwijze treindienstleider.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
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
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Uitleg over werkzones en bijbehorende informatie vind je in de achtergrondinformatie bij ‘Geplande werkzaamheden – verdieping: werkzones’.',
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
                              subtitle: 'Werktreinen',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een werktrein is een trein die rijdt op een voor werkzaamheden ter beschikking gesteld deel van de railinfrastructuur. Een werktrein wordt bediend (gereden) door een werktreinmachinist. Voor een werktrein is altijd een Voertuig Instructie (VTI) voorhanden waarin staat hoe de (werktrein)machinist moet handelen op de betrokken railinfra. De (werktrein)machinist moet altijd in het bezit zijn van deze VTI voordat hij mag gaan rijden. Ook is er voor elke werktrein een BBD , begeleider buitendienst gesteld spoor, aangewezen die de machinist opdrachten kan geven.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een trein die ingezet gaat worden als werktrein zal normaliter als gewone (goederentrein/onderhoudsmachine) rijden tot aan de grens van de voor werkzaamheden beschikbaar gestelde railinfra. Vanaf dat punt wordt het een werktrein. Het is echter ook mogelijk om een bijzonder voertuig in te zetten op een overweg of speciaal inzetpunt en vanaf daar te gaan rijden als werktrein. Het is ook toegestaan om materieel bestemd voor werkzaamheden van te voren al te plaatsen (voor de railinfra ter beschikking is gesteld). Maar dat is altijd in samenspraak met de LWB.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Regels voor de werktrein:',
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
                              text: '- Rijden op zicht;',
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
                              text: '- Maximale snelheid in de nabijheid van personeel is 10 km/u;',
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
                              text: '- Stoppen als de veiligheid dit noodzakelijk maakt.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'De LWB instrueert de BBD en (werktrein)machinist over:',
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
                              text: '- De verplaatsingen van en de werkzaamheden uit te voeren met de werktrein;',
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
                              text: '- De communicatie;',
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
                              text: '- De aanwezigheid van mensen, obstakels en eventueel andere werktreinen;',
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
                              text: '- De VTI;',
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
                              text: '- Bijzondere omstandigheden die van belang zijn voor het veilig rijden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Zie voor meer informatie: Toelaten werktreinen - achtergrondinformatie.',
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
                            height: 300.0,
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
