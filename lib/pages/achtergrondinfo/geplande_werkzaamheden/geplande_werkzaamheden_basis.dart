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
              //PLANMATIG WERKEN CARD
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
              //WERKPLEKINFORMATIE CARD
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
                      //TODO: Hier morgen verder!
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'In dit gedeelte vind je algemene gegevens zoals algemene en plaatsnaam verkortingen en gegevens betreffende de vrije baan.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Bijzonderheden pplg\'s',
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
                                  'In dit gedeelte vind je alle bijzonderheden van het pplg. De opbouw van alle BVS ‘en is gelijk. In eerste instantie is het lastig lezen, maar als je eenmaal doorhebt wat er staat, zal je alle BVS ‘en goed kunnen lezen. Je vindt hier onder andere gegevens over:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Seinbediening;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Vertrekseinlichten;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Treinaankondiging;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Fictieve eindseinnummers;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- \'STOP\'/\'DOOR\'-criterium vrije baan;',
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
                                  '- Vertraagd uit de stand \'STOP\' komende seinen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Overwegen/waarschuwingsinstallaties;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Herroepen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Tekeningen signaleringsbeelden',
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
                                  'In dit onderdeel vind je tekeningen van de overzicht signaleringsbeelden van de werkplekken.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Baanvak en emplacementstekeningen',
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
                                  'Waarschijnlijk is dit het onderdeel van de BVS wat je als treindienstleider het meest zal gebruiken. Je vindt hier de tekeningen van jouw bediengebied (pplg\'s en vrije banen). De gebruikte symbolen op de BVS-tekening kun je vinden in de B-voorschriften Deel I.',
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
                              'assets/images/achtergrond/bvsTekening.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'OS-bladen (overzicht seinen)',
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
                                  'Op de OS-bladen vind je het overzicht van alle seinen in jouw bediengebied. Deze tekeningen worden ook wel seinbeeldenkaarten genoemd. Je kunt hier onder andere informatie vinden over de seinbeelden bij een bepaalde rijweginstelling en de afstanden tussen twee seinen.',
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
                              'assets/images/achtergrond/osBlad.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Bovenleiding schema\'s',
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
                                  'Op dit moment zijn bovenleidingschema\'s nog niet op alle posten digitaal beschikbaar. Op deze tekeningen vind je onder andere de verschillende bovenleidingsgroepen, welke elektrische scheidingen gebruikt worden en waar onder- en schakelstations zijn. Ook deze tekening zal je als treindienstleider vaak gebruiken.',
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
                              'assets/images/achtergrond/bovenleidingSchema.png',
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
