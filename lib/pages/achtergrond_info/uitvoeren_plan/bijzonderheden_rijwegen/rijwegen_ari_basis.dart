import 'package:trdl_tool/all_imports.dart';

class RijwegenARIAchtergrond extends StatelessWidget {
  const RijwegenARIAchtergrond({Key? key}) : super(key: key);

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
                              title:
                                  'Rijwegen - basisinformatie: Automatische Rijweg Instelling (ARI)',
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
                                  'Procesleiding kent een mogelijkheid om rijwegen automatisch in te stellen: automatische rijweg instelling of de afkorting ARI. ARI is software dat op iedere treindienstleider werkplek draait. Je kunt ervoor kiezen om ARI aan of uit te zetten. Als de software \'vastloopt\' kun je die vanaf een andere computer, de PBH++ (Post Beheer Systeem), uitzetten. Om de software daarna opnieuw op te starten, heb je hulp van buitenaf nodig.',
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
                                  'In dit deel van de achtergrondinformatie vind je onder andere  hoe ARI werkt, welke voorwaarden ARI nodig heeft om rijwegen in te stellen en welke triggers ARI gebruikt.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/ariAchtergrond.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
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
                              subtitle: 'Historie',
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
                                  'Voordat procesleiding werd geïntroduceerd werden rijwegen handmatig door de treindienstleider ingesteld. Bij grotere werkplekken was er vaak een assistent treindienstleider die hielp met het instellen van de rijwegen en soms ook de omroep verzorgde.',
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
                                  'Toen procesleiding begin jaren \'90 werd geïntroduceerd, werkte ARI nog niet perfect, maar in de loop van de jaren is ARI steeds slimmer geworden.',
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
                              subtitle: 'Wat is ARI',
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
                                  'ARI is een programma dat draait op iedere treindienstleiders werkplek. Het geeft opdrachten aan de beveiliging om rijwegen in te stellen, net zoals treindienstleiders en assistent treindienstleiders vroeger handmatig deden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Voorwaarden',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'ARI heeft een aantal voorwaarden nodig voordat hij de opdracht geeft om een rijweg in te stellen:',
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
                              text: '- De rijweg moet beschikbaarheid zijn;',
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
                                  '- Het juiste treinnummer moet aanwezig zijn;',
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
                                  '- De insteltijd moet binnen het tijd- of wachtvenster liggen;',
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
                                  'Als aan een van deze voorwaarden niet voldaan wordt, zal ARI geen opdracht geven om de rijweg in te stellen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Beschikbaarheid',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Een van de voorwaarden voor ARI is dat de rijweg beschikbaar moet zijn. Is dit niet het geval dan spreken we over het definitief of tijdelijk niet beschikbaar zijn van de rijweg.',
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
                              text: '- Tijdelijke onbeschikbaarheid:',
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
                                  '* Tijdelijke onbeschikbaarheid kan worden veroorzaakt door een ingestelde kruisende rijweg of een spoorbezetting. ARI ziet daarin geen onderscheid tussen een trein of sectiestoring.',
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
                                  '* Bij tijdelijke onbeschikbaarheid van de rijweg zal ARI  de rijweg oneindig in behandeling houden. De planregel blijft zeegroen.',
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
                              text: '- Definitieve onbeschikbaarheid:',
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
                                  '* Wisselstoringen of aangebrachte verhinderingen in de in te stellen rijweg veroorzaken een definitieve onbeschikbaarheid. Bij een definitieve onbeschikbaarheid wordt de betrokken planregel bij het aanbreken van de insteltijd direct uitgezet voor ARI. Je moet in actie komen.',
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
                              subtitle: 'ARI tijd- en wachtvenster',
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
                                  'In procesleiding zal ARI bij het aanbreken van de insteltijd 1 minuut actief blijven zoeken op een bepaalde plaats (trigger) of een treinnummer aanwezig is. De kleur van de planregel is dan groen. Indien ARI het treinnummer niet vindt, wordt ARI uitgezet.  De planregel is niet meer groen. Om de zoekperiode van ARI te verlengen zijn er ‘vensters’ ontwikkeld. Deze vensters worden wacht- en tijdvenster genoemd. Hieronder volgt de specifieke werking van deze vensters.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Tijdvenster',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Het ARI-tijdvenster kan door jou per PPLG ingesteld worden tot een maximum van 15 minuten. Deze 15 minuten gelden zowel plus als min rondom de insteltijd van een planregel. Dit houdt in dat ARI als het tijdvenster is ingesteld op 15, 15 minuten voor en 15 minuten na insteltijd blijft zoeken naar het juiste treinnummer.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Het tijdvenster heeft twee functies:',
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
                                  '- Zorgen dat ARI het ingesteld aantal minuten plus/min de insteltijd aan blijft voor die planregel;',
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
                                  '- Op aankondigingssecties of TROTS posities het aantal minuten rondom de insteltijd zoekt naar de trein op TROTSnummer.',
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
                                  'Het tijdvenster geldt voor rijwegen vanaf de vrije baan met een D-, K- of A-activiteit.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Wachtvenster',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Het ARI-wachtvenster zorgt ervoor dat ARI een bepaald aantal minuten blijft zoeken naar het juiste treinnummer op een spoor. Er kan per PPLG gekozen worden voor een tijd van 0 en +15 minuten. De instelling van het wachtvenster kan niet door jou gekozen worden, maar wordt door de functioneel beheerder in de PBH++ ingesteld. De meeste wachtvensterinstellingen zijn op 3 minuten geconfigureerd. Het wachtvenster geldt voor rijwegen op een emplacement met een R- of V-activiteit.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/wachtvenster.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Waarom een wachtvenster',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Als er alleen een tijdvenster zou zijn, dan zouden bijzonderheden_trein met een vertrek- of rangeerregel ver voor vertrektijd door ARI worden ingesteld. Het gevolg zou zijn dat infra onnodig lang zal worden vastgehouden. De trein mag immers niet voor vertrektijd vertrekken. Dit beperkt jou in je mogelijkheden van het spoorgebruik. Het ARI-wachtvenster is bedoeld voor rangeer- en vertrekactiviteiten op stations en emplacementen.',
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
                              subtitle: 'ARI-triggers',
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
                                  'Er zijn meerder manieren om ARI te activeren, de zogenaamde triggers. Er is een onderscheid tussen triggers op de vrije baan en het emplacement.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Vrije baan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                              text: '- Treinnummer verplaatsing:',
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
                                  '* Op de vrije baan zijn meerdere trots vensters aanwezig. In de PBH++ kan de functioneel beheerder aangeven bij welke vensterverplaatsing ARI actief wordt. Hierbij kan ook onderscheid worden gemaakt in de verschillende treintypen. Zo kunnen bijzonderheden_trein die een hogere dienstregelingssnelheid hebben bijvoorbeeld een intercity in een ander venster worden getriggerd dan een trein met een lagere dienstregelingssnelheid bijvoorbeeld een goederentrein.',
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
                              text: '- Aankondigingslas:',
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
                                  '* Op de vrije baan zijn aankondigingslassen. Als een trein over deze las rijdt, kan dit door ARI gebruikt worden als trigger om de rijweg in te stellen.',
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
                              text: '- Eindseinreservering:',
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
                                  '* Als er tussen twee Primair ProcesLeidingsGebieden (PPLG\'s) onvoldoende trots-vensters zijn of, wanneer er maar enkele kilometers vrije baan is, kunnen we werken met eindseinreservering. Wanneer het uitrijsein van het PPLG 1 uit de stand stop komt, zal ARI bij PPLG 2 het inrijsein activeren.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/eindseinReservering.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'ARI aanzetten voor bijzonderheden_trein die hun trigger zijn gepasseerd',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Als er planregels uitstaan voor ARI, terwijl de trein zich binnen het aankondigingsgebied bevindt, is het mogelijk om deze weer aan te zetten voor ARI. ARI zal deze planregel gewoon weer in behandeling nemen. In dit geval is de aanwezigheid van het treinnummer in het aankondigingsgebied voldoende om de rijweg in te stellen.',
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
                              subtitle: 'Kleuren planregels',
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
                                  'De planregels kunnen in verschillende kleuren getoond worden. De kleuren van de planregels hebben een betekenis in relatie tot de insteltijd en de werking van ARI. We onderscheiden 2 situaties: ARI aan en ARI uit.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/kleurenPlanregels.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Instelminuut',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelMinuut.png',
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
                                  '- Als een planregel uitstaat voor ARI en de insteltijd is nog niet aangebroken, dan is de planregel wit;',
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
                                  '- Als de insteltijd is aangebroken wordt de planregel geel gedurende de instelminuut;',
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
                                  '- De planregel wordt rood nadat de instelminuut verstreken is.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Oranje planregel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/oranjePlanregel.png',
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
                                  'Als de instelling van een zeegroene planregel, waarvan minimaal 1 seinstap is ingesteld, wordt onderbroken dan zal deze planregel oranje kleuren. Dit kan gebeuren door:',
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
                              text: '- De TRDL zelf (bijv. door herroepen);',
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
                                  '- Procesleiding (bijv. een categorie A-melding);',
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
                                  '- Een storing in procesleiding (bijv. uitval ARI)',
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
                                  'De planregel is oranje gekleurd met het originele \'VAN\' en \'NAAR\' spoor. Je zult deze planregel dus altijd moeten aanpassen.',
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
                                  'Het is niet mogelijk om een oranje planregel in te stellen vanuit je planscherm zonder deze eerst te muteren. Als je het toch doet, krijg je een foutmelding:',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/foutmeldingPlanregel.png',
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
                                  'Er zijn slechts 2 manieren om een oranje planregel uit te voeren:',
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
                                  '- De planregel wordt naar het mutatievenster overgebracht en na aanpassing teruggeplaatst in het plan.',
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
                                  '* Afhankelijk van de insteltijd is het mogelijk de planregel weer aan ARI aan te bieden. Voordeel van deze werkwijze is dat de volgorde vanuit het plan wordt bewaakt. M.a.w. zolang deze planregel bovenaan in het plan staat zal ARI geen andere rijwegen instellen naar hetzelfde eindspoor.',
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
                                  '* Wordt een oranje planregel na ophogen van de insteltijd in het mutatievenster teruggeplaatst in het plan dan zullen alleen de zeegroene planregels naar hetzelfde eindspoor door ARI worden uitgezet waarvan nog geen enkele seinstap is ingesteld. Dit om ongewenste volgordewisselingen te voorkomen.',
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
                                  '* De planregels waarvan minimaal een seinstap is ingesteld naar hetzelfde eindspoor worden door ARI afgebroken en worden oranje getoond.',
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
                                  '- De planregel wordt met behulp van stel in voor aanpassing onder de knop rijweg naar het bedienvenster overgebracht en hier na aanpassing alsnog worden uitgevoerd.',
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
                                  '* Nadeel van deze werkwijze is dat de planregel uit het plan verdwijnt en naar het bedienvenster wordt verplaatst en ARI andere rijwegen kan instellen naar een gezamenlijke eindspoor. Om dit te voorkomen is het uitzetten van ARI voor opvolgende planregels verstandig.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Voordelen oranje planregel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  '- Je wordt erop gewezen dat van een planregel de rijweginstelling is afgebroken;',
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
                                  '- Je houdt overzicht in zijn plan, omdat er geen planregels uit het plan verdwijnen en spontaan naar het bedienscherm worden verplaatst;',
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
                                  '- De oranje planregels worden omdat zij in het plan blijven staan nog steeds meegenomen bij de bepaling van de volgorde naar een spoor, dus er vindt geen onbedoelde volgordewisseling plaats.',
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
                              subtitle: 'Rijden op zicht in ARI',
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
                                  'ARI kan ook rijden op zicht (ROZ) rijwegen automatisch instellen. Omdat hier risico’s aan zitten, zijn daar een aantal voorwaarden aan verbonden. Deze zijn vastgelegd in de PBH++.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Voorwaarden voor het aanzetten van ROZ in ARI',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'ARI kan ROZ-planregels instellen voor A- en R-activiteiten als voldaan is aan een aantal voorwaarden:',
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
                                  '- De planregel moet aangezet zijn voor ARI;',
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
                                  '- Er zijn geen openstaande klaarmeldingen, tijdelijke niet-beschikbaarheid (m.u.v. de laatste seinstap), enz.;',
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
                                  '- Het ROZ-tijdvenster is nog niet verstreken;',
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
                                  '- Bij oprijden naar ongecontroleerd gebied mag er geen sectie bezetting zijn tussen het rangeerdeel en daar waar de rijweg naar ongecontroleerd spoor leidt;',
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
                                  '- Bij combineren moet het NAAR-spoor bezet zijn door de trein(en) waarmee gecombineerd moet worden, en deze moeten voldoende lang stilstaan. Dit wordt gecontroleerd door te kijken of de sectiebezetting op het ROZ-spoor en vlak ervoor, ongewijzigd blijft gedurende de tijd die de functioneel beheerder heeft ingesteld. Indien nodig wacht ARI tot hieraan voldaan is.',
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
                                  'De treinnummers die al aanwezig zijn moeten overeenkomen met de materieelrelatie uit het procesplanrijwegen.',
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
                                  'Een ROZ-planregel kan worden aangezet voor ARI als:',
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
                                  '- Het NAAR-spoor een spoor is dat door de functioneel beheerder als ROZ-spoor is opgegeven;',
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
                                  '- Het een planregel voor een A- of R-activiteit is;',
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
                                  '- De rijweg is bedoeld om naar ongecontroleerd gebied te rijden of om te combineren;',
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
                                  '- Bij combineren moeten alle aanvoerende bijzonderheden_trein (rangeerbewegingen) in dezelfde richting aankomen en mag iedere trein (rangeerbeweging) slechts één keer voorkomen als aanvoerende activiteit in de materieelrelaties die voor de in te stellen planregel gelden.',
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
                                  'Als niet aan alle voorwaarden is voldaan stelt ARI een ROZ-rijweg niet in. Er verschijnt dan een pop-up venster met de volgende tekst:',
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
                                  'Waarschuwing - Instellen rijwegen - ARI stelt ROZ-planregel: ...1 niet in, omdat ...2.',
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
                                  'Bij ...1 wordt de betreffende planregel vermeld, en bij ...2 de reden:',
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
                              text: '- Het ROZ-tijdvenster verstreken is;',
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
                                  '- Er zich een bezetting voordoet in de rijweg;',
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
                                  '- Er zich geen bezetting voordoet op het ROZ-spoor;',
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
                                  '- Er een verkeerd treinnummer op het ROZ-spoor aanwezig is;',
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
                                  '- De bijbehorende materieelrelatie en/of daarmee gerelateerde planregels gewijzigd zijn.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #8*/
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
                              subtitle: 'ARI instelwijze',
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
                                  'ARI stelt rijwegen in afhankelijk van de instelwijze. Dit betekent dat ARI een planregel die uit meerdere seinstappen bestaat in zijn geheel veilig kan zetten of seinstap voor seinstap. We hebben drie soorten: Integraal, gefaseerd en hoog groen.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelwijzeARI.png',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelwijzeIntegraal.png',
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
                                  'Bij een integrale rijweg is het VAN-spoor in de planregel oranje gekleurd.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #9*/
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
                              subtitle: 'Deadlock',
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
                                  'Een deadlock is een situatie waarbij twee bijzonderheden_trein tegenover elkaar staan en hinderen in de vervolgrijweg of elkaar opsluiten en hinderen in de vervolgrijweg. Een ongewenste situatie, waarbij één van de bijzonderheden_trein altijd moet keren.',
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
                                  'De situatie kan ontstaan, omdat ARI samengestelde rijwegen gefaseerd instelt. Om dit te voorkomen, zijn enkele controles ingebracht.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock1.png',
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
                                  'Deadlock: Door de lengte van de bijzonderheden_trein worden zij als het ware \'opgesloten\'.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Deadlock preventie',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'In procesleiding is de beschikbaarheidscontrole geoptimaliseerd om te voorkomen dat er door ARI een rijweg wordt ingesteld naar een bedienbare baan waar al een trein in de tegengestelde richting onderweg is.',
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
                                  'Wanneer ARI een planregel in behandeling neemt, controleert ARI alle reeds in behandeling zijnde planregels op route en via sporen. Als ARI een deadlocksituatie signaleert, zet hij deze nieuw in behandeling te nemen planregel uit ARI. De planregel wordt rood en er wordt een categorie B melding weergegeven in het bedienscherm. De seinsymbolen in tegengestelde richting zullen oranje tonen.',
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
                                  'De beschikbaarheidscontrole voorkomt dat ARI een rijweg instelt naar een bedienbare baan waar al een trein in tegengestelde richting onderweg is. Dit speelt met name over de PPLG-grenzen heen. Bij gedeelde planregels kan deadlockpreventie ook werken.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock2.png',
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
                                  'De rijweg voor trein 1 is ingesteld naar spoor 750. Trein 2 moet vertrekken naar spoor BA via spoor 750. ARI zal in verband met de dealock preventie de planregel voor trein 2 uitzetten en een deadlock melding genereren.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Deadlocks en handmatige rijweginstelling',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Voor rijwegen die handmatig worden ingesteld in het planscherm en rijwegen die ingesteld worden in het bedienscherm zal geen deadlocktoets worden uitgevoerd. Deze toets zal je zelf moeten uitvoeren.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock3.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Deadlockpreventie en verhinderingen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Deadlockpreventie herkent geen nieuwe deadlocksituaties die zijn ontstaan door het plaatsen van verhinderingen zoals in het voorbeeld hiernaast, waarbij wissel 3 in de links leidende stand is verhinderd.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock4.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Let op: Geen deadlock herkenning!',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #10*/
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
                              subtitle: 'Lange Kerende Treinen (LKT)',
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
                                  'Sommige bijzonderheden_trein hebben een dusdanige lengte, dat keren op een spoor betekent dat ze zowel de A als de B zijde van dat betreffende spoor bezetten. Het systeem TROTS is hier niet op gebouwd. TROTS kan namelijk geen treinnummers omnummeren als een treinnummer op spoor A binnenkomt en op spoor B vertrekt. Om dit op te lossen is de functie \'Lange kerende bijzonderheden_trein\' toegepast in procesleiding.',
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
                                  'Voor het instellen van een rijweg zoekt ARI naar het TROTS-nummer op het vertrekspoor. LKT is een functionaliteit in Procesleiding die het mogelijk maakt voor ARI om het treinnummer te \'vinden\' op een ander spoor dan het vertrekspoor aangegeven in het plan. Met deze functionaliteit kijkt ARI ook naar andere TROTS vensters binnen een spoorgroep. Voorwaarde is dat deze spoorgroep moet zijn aangemaakt in de PBH++.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'LKT-controles',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Voordat de rijweg wordt ingesteld voert ARI nog een aantal controles uit:',
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
                                  '- Tussen de kop van de trein en het vertreksein zijn in de vertrekrichting geen seinen (met dezelfde richting);',
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
                                  '- Tussen de kop van de trein en het vertreksein zijn er geen wissels;',
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
                                  '- De kop van de trein bevindt zich op een sectie zonder wissels;',
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
                                  '- Er geldt een stilstand criterium (15-999 sec).',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/deadLock5.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Een voorbeeld: trein 4419 komt binnen op spoor 704B en vertrekt van spoor 704A als 4420, dit in verband met de lengte van de trein. ARI zou in dit geval geen rijweg instellen, omdat op spoor 704A geen treinnummer gevonden wordt. Als in de PBH++ spoor 704A en 704B geconfigureerd is als spoorgroep vindt ARI het treinnummer wel.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Spoorbezettingsgrafiek',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Lange kerende bijzonderheden_trein zijn zichtbaar in de spoorbezettingsgrafiek door 2 horizontale strepen tussen aankomst en vertrek. Dit is het gevolg van de invulling van het spoornummer onder de optie \'t/m\' van de planregel. Bij mutaties als gevolg van spoorwijzigingen op A/B sporen, moet deze voor de spoorbezettingsgrafiek ook worden aangepast.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*CARD #11*/
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
                              subtitle: 'Instelvoorschrift',
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
                                  'Een trein die gedeeltelijk, ten onrechte of opnieuw langs een perron tot stilstand komt, levert risico’s op voor persoonlijke ongevallen. Een trein die stil komt te staan in een wisselstraat kost veel infracapaciteit. Daarnaast stelt ILT ook eisen ter voorkoming van het doorschieten van tot stilstand komende bijzonderheden_trein voor kruisende en \'intakkende\' sporen. Beide situaties worden voorkomen door het configureren van lokaal specifieke instelvoorschriften. Deze instelvoorschriften worden in de PBH++ door de functioneel beheerder in ARI vastgelegd.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Wat is een instelvoorschrift',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Een instelvoorschrift is een voorschrift waaraan ARI moet voldoen om een rijweg in te stellen. Met een instelvoorschrift wordt aangegeven dat een verzameling opeenvolgende seinstappen (enkelvoudige rijwegen) binnen een samengestelde rijweg integraal (in zijn geheel) moet worden ingesteld.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Hoe worden instelvoorschriften geconfigureerd',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  '- Een instelvoorschrift wordt gedefinieerd voor een bepaalde rijrichting. Het geldt alleen als de volgorde van sporen in het instelvoorschrift overeenkomt met de afrijdvolgorde van de sporen van de samengestelde rijweg;',
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
                                  '- Een instelvoorschrift geldt alleen als het gehele instelvoorschrift binnen de samengestelde rijweg ligt;',
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
                                  '- Alle instelvoorschriften die binnen de samengestelde rijweg liggen dienen gerespecteerd te worden;',
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
                                  '- Als er overlappende instelvoorschriften binnen de samengestelde rijweg liggen, dienen die behandeld te worden alsof het één instelvoorschrift betreft dat het hele gebied afdekt (er mag ten gevolge van het gefaseerd instellen dus nergens gestopt worden binnen dit gebied).',
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
                                  '- Als er instelvoorschriften zijn die aan elkaar grenzen, dienen die als afzonderlijke instelvoorschriften behandeld te worden (er mag ten gevolge van het gefaseerd instellen dus gestopt worden op de grens).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Voorbeelden:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Planregel voor trein 1 van spoor 1A naar spoor DA.',
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
                                  'Trein 2 staat stil op spoor 22. Zonder instelvoorschrift zou rijweg uit de stand stop komen tot spoor 2b. Trein 1 komt dan tot stilstand langs perron spoor 2b. Dit is ongewenst! Om dat te voorkomen, moet er een instelvoorschrift komen van spoor 2b naar spoor 22.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelVoorschrift1.png',
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
                                  'Planregel voor trein 1 van spoor 1A naar spoor DA. Instelvoorschrift: 2b – 22.​​​​​​​ De planregel is in behandeling (zeegroen) echter de rijweg wordt niet ingesteld.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelVoorschrift2.png',
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
                                  'Inmiddels is trein 2 aangekomen op spoor DA. Nu kan er wel aan het instelvoorschrift worden voldaan en wordt een (integraal) deel van de gefaseerde rijweg ingesteld.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/ari_basis/instelVoorschrift3.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*CARD #12*/
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
                              subtitle: 'PBH++',
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
                                  'Een treindienstleider kan een aantal instellingen voor ARI op zijn werkplek wijzigen, bijvoorbeeld het aantal in te stellen seinstappen per planregel en het tijdvenster.',
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
                                  'De overige instellingen worden door de functioneel beheerder van de post gedaan in PBH++ (post beheersysteem). Hier kunnen triggers, tijdvenster, seinstappen per PPLG, Lange Kerende Trein, instelvoorschriften en instellingen voor ABT worden aangepast.',
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
                                  'De PBH++ kent meerdere inlogniveaus met bijbehorende autorisaties (van \'laag\' naar \'hoog\'):',
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
                                  '- Treindienstleider - kan alle instellingen zien, maar niet muteren. Alleen ARI noodstop kan bediend worden op dit niveau;',
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
                                  '- OvD-V - kan alle instellingen zien, kan alleen WBI beheer en Planbeheer bedienen (én ARI noodstop);',
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
                                  '- FUB - kan alle instellingen zien én muteren;',
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
                                  '- Technisch beheer (CSD) - kan alle instellingen zien én muteren.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Per post zijn er verschillen mogelijk in:',
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
                              text: '- Locatie PBH++;',
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
                                  '- Inlog en wachtwoord voor TRDL - deze zijn bekend bij de OvD-V en beschikbaar nabij de PBH++.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #13*/
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
                              subtitle: 'ARI-noodstop',
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
                                  'ARI is software die draait op iedere treindienstleiders werkplek. Zoals iedere software kan ook ARI-software vastlopen, maar er kunnen ook situaties ontstaan waarbij het noodzakelijk wordt om ARI te stoppen. Denk hierbij aan uitval van de muis, uitval van het planscherm etc. In deze gevallen kun je in de PBH++ ARI-noodstop toepassen. ARI-noodstop pas je alleen toe in situaties waarbij je ARI niet om de \'normale\' manier kunt uitzetten.',
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
                                  'Als ARI-noodstop wordt toegepast, wordt het programma gestopt en automatisch herstart. De planregels worden dan weer wit (ARI moet weer per PPLG worden aangezet) Er verschijnt een categorie B-melding.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Handelingen in de PBH++:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  '- Log in met gebruikersnaam en wachtwoord voor de TRDL – zijn bekend bij de OvD-V;',
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
                                  '- Selecteer ARI Noodstop (bovenin rechts).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Nu zie je de werkplekken van de post:',
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
                                  '- Klik op het juiste werkpleknummer – het nummer van de werkplek vind je rechtsachter op het bureaublad van de te stoppen werkplek;',
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
                              text: '- Klik op \'Stop ARI op werkplek\'.',
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
                                  'Je hebt nu ARI uitgezet voor de betreffende werkplek.',
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
                                  'Je kan nu zelf het moment kiezen om ARI weer aan te zetten op deze werkplek.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Meld de storing aan bij het OBI.',
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
