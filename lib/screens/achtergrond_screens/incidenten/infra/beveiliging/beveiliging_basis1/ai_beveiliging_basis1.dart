import 'package:trdl_tool/all_imports.dart';

class AIBeveiligingBasis1 extends StatelessWidget {
  const AIBeveiligingBasis1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Beveiliging - basisinformatie 1',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SubTitleText(
                      subtitle: 'Het ruststroomprincipe',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Om te kunnen zien waar treinen zich bevinden en om overwegen en seinen te laten werken, is het spoor verdeeld in stukken. Deze stukken spoor worden gescheiden door een stukje isolatiemateriaal; elektrische scheidingslassen (ES lassen). Hierdoor ontstaan verschillende secties in het spoor (geïsoleerd spoor). We maken onderscheid in de verdeling van het spoor tussen blokken en secties:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Een blok is het gedeelte spoor op de vrije baan tussen twee opvolgende seinen;\n\n- Een sectie is het gedeelte spoor tussen twee ES lassen.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij het ruststroomprincipe laat men door een sectie stroom lopen (12 volt gelijkstroom). In deze stroomkring zit ook een relais. Dit relais werkt als een soort lichtschakelaar; als er stroom aanwezig is, is het relais aangetrokken. Wordt deze stroomkring doorbroken door de as van de trein, ontstaat er kortsluiting en valt het relais af. Hierdoor kan men zien waar de trein is.\n\nAlles wat wordt verbonden met dit relais zal reageren op kortsluiting in de stroomkring. Een nadeel hiervan is dat alles wat geleid en op het spoor terecht komt, ook gevolgen heeft. Doordat er dan ook kortsluiting ontstaat, ziet de beveiliging dit als een spoorbezetting en valt het relais af.\n\nEen blok kan verdeeld zijn in meerdere secties of gelijk zijn aan een sectie. Het blok is bezet als er spoorbezetting is in één of meerdere secties.',
                    ),
                    SizedBoxH(),
                    InsertImage(image: 'assets/images/achtergrond_info/incidenten/beveiliging_basis1_relais.png'),
                    SubTitleText(
                      subtitle: 'Vrije baan beveiliging',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Op de vrije baan zijn automatisch werkende beveiligingen toegepast. We noemen dit automatisch blokstelsel. De vrije baan wordt door lichtseinen verdeeld in blokken, emplacementen worden verdeeld in secties. De controle op het bezet zijn van een blok of sectie gebeurt door middel van geïsoleerd spoor (ruststroomprincipe).\n\nIn Nederland hebben we de volgende vrije baan beveiligingen:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Linkerspoorbeveiliging;\n\n- Enkelspoorbeveiliging\n\n- Dubbel-enkelspoorbeveiliging.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Linkerspoorbeveiliging',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij linkerspoor beveiliging is het baanvak ingericht en beveiligd voor rechts rijden. Ook is er een mogelijkheid gecreëerd om met één trein tegelijk beveiligd te rijden over het linkerspoor. Het linkerspoor is dan één blok geworden.\n\nOm links te kunnen rijden is het noodzakelijk om de rijrichting te keren. Het dubbele pijltje in de BVS-tekening geeft aan dat er meerdere treinen in die richting kunnen rijden. Het enkele pijltje geeft aan dat ook in de tegengestelde rijrichting op veilige seinen op stationsafstand kan worden gereden. Stationsafstand betekent dat de eerste trein binnen moet zijn op het volgende station voordat de volgende trein hetzelfde spoor in dezelfde richting op kan rijden. De rijrichting wordt gewisseld door de TRDL die toegang geeft tot het linkerspoor.\n\nStoring van een geïsoleerd spoorgedeelte van de vrije baan heeft tot gevolg dat de rijrichting op dat spoor niet meer gewisseld kan worden. De zijde vanwaar de aankondigingssectie van overwegen werkt, is afhankelijk van de ingestelde rijrichting. Indien het sein dat toegang geeft tot de vrije baan, uit de stand \'stop\' is gekomen, bestaat de zekerheid, dat aankondigingssecties op de juiste wijze zijn ingeschakeld.',
                    ),
                    SizedBoxH(),
                    InsertImage(image: 'assets/images/achtergrond_info/incidenten/beveiliging_basis1_linkerspoorbeveiliging.png'),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Het sein op het linkerspoor heeft een vierkant achtergrondscherm en we noemen dit sein een voorsein. Dit voorsein zegt alleen iets over de kleur van het eerst volgende inrijsein en dit voorsein kan nooit rood tonen. Door het voorsein te plaatsen, kan een trein op beter seinbeeld dan geel vertrekken en wordt een hogere snelheid mogelijk op het linkerspoor. Bij het linkerspoor rijden is de afstand van station tot station maar 1 blok.\n\nVoor het rechts rijden is het baanvak verdeeld in blokken en kunnen er dus meerdere treinen rijden. Voor het links rijden is het baanvak meestal niet verdeeld in blokken. Men rijdt dan op stationsafstand.\n\nAls de rijrichting wordt gekeerd voor links rijden dan zullen aanwezige P-seinen voor rechts rijden rood tonen. Op druk bereden baanvakken wordt bij beveiligd linkerspoor ook wel gebruik gemaakt van meerdere blokken. Op het linkerspoor wordt dan een of meerdere P-seinen geplaatst, we spreken dan van \'beveiligd linkerspoor met tussensein\'.',
                    ),
                    SizedBoxH(),
                    InsertImage(image: 'assets/images/achtergrond_info/incidenten/beveiliging_basis1_linkerspoorbeveiliging2.png'),
                    BoldText(
                      indents: 0,
                      boldtext: 'Enkelspoorbeveiliging',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij enkelspoorbeveiliging is het spoor in beide richtingen gelijkwaardig beveiligd. De rijrichting keert automatisch door middel van rijweginstelling. In onderstaande tekening is er een rijweg ingesteld van A naar B.',
                    ),
                    SizedBoxH(),
                    InsertImage(image: 'assets/images/achtergrond_info/incidenten/beveiliging_basis1_enkelspoorbeveiliging.png'),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Dubbel-enkelspoorbeveiliging',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Als enkelspoorbeveiliging op twee of meer sporen is toegepast dan hebben we dubbel enkelspoor beveiliging. De werking van de beveiliging (automatisch blokstelsel) is hetzelfde. Als het mogelijk is worden de seinen voor het linkerspoor ook aan de linkerkant van het spoor geplaatst. Beide sporen zijn dus in beide richtingen gelijkwaardig ingericht. Dubbel enkelspoor beveiliging kenmerkt zich door de groepjes van seinen langs de baan.\n\nOp onderstaande tekening zie je de situatie als er geen rijweginstelling heeft plaatsgevonden. De situatie is in rust. Als één van beide stations een rijweg instelt over het rechter of linker spoor vallen de seinen in de tegengestelde rijrichting op rood (zie ook tekening enkelspoorbeveiliging). Het is dan niet mogelijk om hier tegengesteld een rijweg in te stellen. Hier geldt dus: \'Wie het eerst komt, het eerst maalt\'. Na het passeren van de trein komt het sein dat de andere richting beveiligt weer uit de stand stop. Een trein kan dus in tegengestelde richting weer op veilig sein terugkeren.',
                    ),
                    SizedBoxH(),
                    InsertImage(image: 'assets/images/achtergrond_info/incidenten/beveiliging_basis1_dubbelenkelspoorbeveiliging.png'),
                    SizedBoxH(),
                    //TODO: Hier verder!!!
                    BodyText(
                      indents: 0,
                      text:
                          'De seinbeelden volgen elkaar zo op, dat de MCN de opdracht van een seinbeeld kan opvolgen. Het seinbeeld \'snelheid begrenzen\' wordt op een zodanige afstand gegeven, dat een verlaging van de snelheid tijdig kan zijn uitgevoerd. Tijdig betekent dat de beschikbare remweg voldoende is om een opgelegde lagere snelheid te bereiken.\n\nDoor toepassing van cijferbakken en knipperende lampen kan een lichtsein nog meer seinbeelden tonen. Kijk voor een uitgebreid overzicht van lichtseinen en seinbeelden in het seinenboek.',
                    ),
                  ],
                ),
              ),
            ),
            /*ACHTERGROND CARD*/
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
                          buttontext: 'Beveiliging',
                          destination: 'ai_incidenten_beveiliging_main',
                        ),
                        //TODO: Toevoegen!
                        NavButton(
                          buttontext: 'Beveiliging - Basis 1',
                          destination: 'ai_incidenten_beveiliging_basis1',
                        ),
                        //TODO: Toevoegen!
                        NavButton(
                          buttontext: 'Beveiliging - Basis 2',
                          destination: 'ai_incidenten_beveiliging_basis2',
                        ),
                      ],
                    ),
                    const SizedBoxH(),
                  ],
                ),
              ),
            ),
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    InsertImage(image: 'assets/images/achtergrond_info/incidenten/ai_seinen_basis1.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
