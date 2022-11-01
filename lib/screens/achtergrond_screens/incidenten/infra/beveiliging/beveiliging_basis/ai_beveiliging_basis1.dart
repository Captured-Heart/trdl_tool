import '/all_imports.dart';

//TODO: Hier verder met toevoegen info!

enum WhereToGoFromAIBeveiligingBasis1 {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_beveiliging_main,
  // ignore: constant_identifier_names
  ai_beveiliging_basis2,
}

class AIBeveiligingBasis1 extends StatelessWidget {
  const AIBeveiligingBasis1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIBeveiligingBasis1Navigation(),
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
                    title: 'Beveiliging - basisinformatie deel 1',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Vrije baan beveiliging',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De vrije baan wordt door lichtseinen verdeeld in blokken, emplacementen worden verdeeld in secties. De controle op het bezet zijn van een blok of sectie geschiedt door middel van geïsoleerd spoor (ruststroomprincipe).\nOp de vrije baan zijn automatisch werkende beveiligingen toegepast. We noemen dit ook wel automatisch blokstelsel. Bij het automatisch blokstelsel worden de seinen door de trein zelf bediend. Het berust op het principe van een spoorstroomloop. Een linker spoorstaaf is geïsoleerd. Op beide spoorstaven wordt een elektrische spanning aangesloten. Het gevolg is dat er een relais wordt bekrachtigd. Rijdt er nu een trein over dit geïsoleerde deel, dan worden de beide spoorstaven door de wielassen van de trein kortgesloten met als gevolg dat het relais afvalt.\nHet geïsoleerde deel van het spoor vormt een blok, Het spoorrelais bepaalt de stand van het sein aan het begin van het blok. Bij onbezet spoor is het relais aangetrokken en bij bezet spoor afgevallen. Dit ruststroomprincipe heeft als voordeel dat bij storing het relais afvalt, waardoor het bloksein in de stoptonende stand komt. Wanneer men een aantal van deze geïsoleerde stukken achter elkaar plaatst, dan heeft men een automatisch werkend blokstelsel. In normale situaties (wanneer het blok niet bezet is) staat het sein in de veilige stand, dit in tegenstelling tot bijvoorbeeld inrijseinen bij stations, die normaliter de stoptonende stand tonen.\nIn Nederland hebben we de volgende vrije baan beveiligingen:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Linkerspoorbeveiliging;\n- Enkelspoorbeveiliging;\n- Dubbel- enkelspoorbeveiliging.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Linkerspoorbeveiliging',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Bij linkerspoor beveiliging is het baanvak ingericht en beveiligd voor rechts rijden. Ook is er een mogelijkheid gecreëerd om met één trein tegelijk beveiligd te rijden over het linkerspoor. Het linkerspoor is dan één blok geworden. Om links te kunnen rijden is het noodzakelijk om de rijrichting te keren. Het dubbele pijltje in de BVS-tekening geeft aan dat er meerdere treinen in die richting kunnen rijden. Het enkele pijltje geeft aan dat ook in de tegengestelde rijrichting op veilige seinen op stationsafstand kan worden gereden. Stationsafstand betekent dat de eerste trein binnen moet zijn op het volgende station voordat de volgende trein hetzelfde spoor in dezelfde richting op kan rijden. De rijrichting wordt gewisseld door de TRDL die toegang geeft tot het linkerspoor.\nStoring van een geïsoleerd spoorgedeelte van de vrije baan heeft tot gevolg dat de rijrichting op dat spoor niet meer gewisseld kan worden. De zijde vanwaar de aankondigingssectie van overwegen werkt, is afhankelijk van de ingestelde rijrichting. Indien het sein dat toegang geeft tot de vrije baan, uit de stand 'stop' is gekomen, bestaat de zekerheid, dat aankondigingssecties op de juiste wijze zijn ingeschakeld.\nHet sein op het linkerspoor heeft een vierkant achtergrondscherm en we noemen dit sein een voorsein. Dit voorsein zegt alleen iets over de kleur van het eerst volgende inrijsein en dit voorsein kan nooit rood tonen. Door het voorsein te plaatsen, kan een trein op beter seinbeeld dan geel vertrekken en wordt dus een hogere snelheid mogelijk op het linkerspoor. Bij het linkerspoor rijden is de afstand van station tot station dus maar 1 blok.\nVoor het rechts rijden is het baanvak verdeeld in blokken en kunnen er dus meerdere treinen rijden. Voor het links rijden is het baanvak meestal niet verdeeld in blokken. Men rijdt dan op stationsafstand.\nAls de rijrichting wordt gekeerd voor links rijden dan zullen aanwezige P-seinen voor rechts rijden rood tonen. Op druk bereden baanvakken wordt bij beveiligd linkerspoor ook wel gebruik gemaakt van meerdere blokken. Op het linkerspoor wordt dan een of meerdere P-seinen geplaatst, we spreken dan van 'beveiligd linkerspoor met tussensein'.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/beveiliging_basis1_relais.png',
                  ),
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
                        "Bij linkerspoor beveiliging is het baanvak ingericht en beveiligd voor rechts rijden. Ook is er een mogelijkheid gecreëerd om met één trein tegelijk beveiligd te rijden over het linkerspoor. Het linkerspoor is dan één blok geworden.\n\nOm links te kunnen rijden is het noodzakelijk om de rijrichting te keren. Het dubbele pijltje in de BVS-tekening geeft aan dat er meerdere treinen in die richting kunnen rijden. Het enkele pijltje geeft aan dat ook in de tegengestelde rijrichting op veilige seinen op stationsafstand kan worden gereden. Stationsafstand betekent dat de eerste trein binnen moet zijn op het volgende station voordat de volgende trein hetzelfde spoor in dezelfde richting op kan rijden. De rijrichting wordt gewisseld door de TRDL die toegang geeft tot het linkerspoor.\n\nStoring van een geïsoleerd spoorgedeelte van de vrije baan heeft tot gevolg dat de rijrichting op dat spoor niet meer gewisseld kan worden. De zijde vanwaar de aankondigingssectie van overwegen werkt, is afhankelijk van de ingestelde rijrichting. Indien het sein dat toegang geeft tot de vrije baan, uit de stand 'stop' is gekomen, bestaat de zekerheid, dat aankondigingssecties op de juiste wijze zijn ingeschakeld.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/beveiliging_basis1_linkerspoorbeveiliging.png',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Het sein op het linkerspoor heeft een vierkant achtergrondscherm en we noemen dit sein een voorsein. Dit voorsein zegt alleen iets over de kleur van het eerst volgende inrijsein en dit voorsein kan nooit rood tonen. Door het voorsein te plaatsen, kan een trein op beter seinbeeld dan geel vertrekken en wordt een hogere snelheid mogelijk op het linkerspoor. Bij het linkerspoor rijden is de afstand van station tot station maar 1 blok.\n\nVoor het rechts rijden is het baanvak verdeeld in blokken en kunnen er dus meerdere treinen rijden. Voor het links rijden is het baanvak meestal niet verdeeld in blokken. Men rijdt dan op stationsafstand.\n\nAls de rijrichting wordt gekeerd voor links rijden dan zullen aanwezige P-seinen voor rechts rijden rood tonen. Op druk bereden baanvakken wordt bij beveiligd linkerspoor ook wel gebruik gemaakt van meerdere blokken. Op het linkerspoor wordt dan een of meerdere P-seinen geplaatst, we spreken dan van 'beveiligd linkerspoor met tussensein'.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/beveiliging_basis1_linkerspoorbeveiliging2.png',
                  ),
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
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/beveiliging_basis1_enkelspoorbeveiliging.png',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Dubbel-enkelspoorbeveiliging',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Als enkelspoorbeveiliging op twee of meer sporen is toegepast dan hebben we dubbel enkelspoor beveiliging. De werking van de beveiliging (automatisch blokstelsel) is hetzelfde. Als het mogelijk is worden de seinen voor het linkerspoor ook aan de linkerkant van het spoor geplaatst. Beide sporen zijn dus in beide richtingen gelijkwaardig ingericht. Dubbel enkelspoor beveiliging kenmerkt zich door de groepjes van seinen langs de baan.\n\nOp onderstaande tekening zie je de situatie als er geen rijweginstelling heeft plaatsgevonden. De situatie is in rust. Als één van beide stations een rijweg instelt over het rechter of linker spoor vallen de seinen in de tegengestelde rijrichting op rood (zie ook tekening enkelspoorbeveiliging). Het is dan niet mogelijk om hier tegengesteld een rijweg in te stellen. Hier geldt dus: 'Wie het eerst komt, het eerst maalt'. Na het passeren van de trein komt het sein dat de andere richting beveiligt weer uit de stand stop. Een trein kan dus in tegengestelde richting weer op veilig sein terugkeren.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/beveiliging_basis1_dubbelenkelspoorbeveiliging.png',
                  ),
                  SizedBoxH(),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Emplacementsbeveiliging',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Op de vrije baan, het spoorgedeelte tussen de stations, werkt de beveiliging voor een groot deel automatisch. Door het ruststroomprincipe is het sein dat een blok dekt rood als in dat blok spoorbezetting is. Deze P-seinen kan de TRDL niet bedienen.\n\nOp een station moet de TRDL een blok 'maken'. Hij moet d.m.v. wissels de trein leiden naar het perronspoor dat in zijn planregel vermeld staat, om reizigers en treinen op het juiste tijdstip op de juiste plaats te doen zijn. Het beveiligingssysteem zorgt ervoor dat:",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- De rijrichting tot het eerstvolgende bedienbare sein wordt gecontroleerd, zo mogelijk ingesteld en vastgelegd;\n\n- De beveiligingsinrichtingen worden gecontroleerd, gestuurd en vastgelegd;\n\nDe rijweg (het blok) wordt gecontroleerd op spoorbezetting.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Als aan alle voorwaarden wordt voldaan komt het sein 'veilig'.\n\nEr zijn verschillende emplacementsbeveiligingen:",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- NX - ENtrance / Exit beveiligingssysteem met relais;\n\n- EBS - Elektronisch beveiligingssysteem SIMIS;\n\n- VPI - Vital Process Interlocking. Een beveiligingssysteem dat op dezelfde manier werkt als NX, maar dan elektronisch.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'NX',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "NX is een relaisbeveiligingssysteem dat d.m.v. relaisstanden de spoorbezettingen aangeeft en daarmee de beveiliging regelt.\n\nKort na WOII was van het Nederlands spoorwegnet, evenals van dat van de rest van Europa, weinig of niets meer over. Het was zaak alles zo snel mogelijk te herstellen en Nederland weer op te bouwen, een goed functionerend spoorwegnet was hierbij natuurlijk belangrijk. Met financiële hulp van Amerika werd het spoorwegnet herbouwd.\n\nEen aantal hooggeplaatste Nederlandse spoorfunctionarissen reisde kort na de oorlog af naar Amerika om een nieuw beveiligingssysteem te bezichtigen. Ze hadden namelijk gehoord dat in Amerika een modern systeem was ingevoerd dat snel werkte en de bedoeling was dat dit ook in Nederland ingevoerd ging worden.\n\nTijdens dit bezoek spraken de Amerikanen over het systeem, afgekort, als het 'EN/EX' systeem. De 'tolk' vertelde: als je in het Engels het alfabet opnoemt zeggen ze bij de letter 'N' net als wij 'EN', maar bij de letter 'X' zeggen ze niet 'IX' zoals wij maar 'EX', dus ze zeggen eigenlijk NX, en dat is dus de naam van de beveiliging. Zo was het en zo is het nu nog steeds.\n\nWat de Amerikanen echter afgekort hadden was ENtrance/EXit. Of zoals wij zouden zeggen begin/eind. De kracht van het systeem is namelijk dat een TRDL het begin en het eind van een rijweg moet aangeven, terwijl het systeem dan alle beveiligingselementen controleert, aanstuurt en vergrendelt. Men hoeft dus niet meer alle elementen afzonderlijk te bedienen en dat werkt vele malen sneller dan de toen 'klassiek' geworden beveiliging.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  const TitleText(
                    title: 'Ga snel naar',
                  ),
                  const SizedBoxH(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <NavButton>[
                      NavButton(
                        buttontext: 'EBS en VPI',
                        destination: 'ai_beveiliging_basis2',
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Cascadeschakeling en Two Track Pick Up',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Rijwegen worden ingesteld door de TRDL. Hij maakt hierbij gebruik van procesleiding en kan daarvoor ARI (automatische rijweginstelling) gebruiken.\n\nAls de TRDL een rijweg gaat instellen in procesleiding gebeurt er het volgende:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- De rijweg wordt gecontroleerd op tegengestelde bewegingen en indien mogelijk wordt de rijrichting ingesteld en vergrendeld. Een tegengestelde rijweg wordt hierdoor uitgesloten;\n\n- De wissels in de rijweg worden in de juiste stand gestuurd en daarna vergrendeld. Ook eventuele andere inrichtingen die in de ingestelde rijweg liggen worden vergrendeld (bruggen, grendels, etc.);\n\n- De rijweg is nu vastgelegd;\n\n- De rijweg wordt gecontroleerd op spoorbezetting;\n\n- Het sein komt uit de stand stop.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Wanneer de rijweg wordt ingesteld met het seinbeeld 'geel knipper', vindt er geen controle plaats op eventuele spoorbezetting.",
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Cascadeschakeling',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Als een rijweg wordt ingesteld wordt deze vergrendeld. Wanneer het sein uit de stand stop komt wordt de rijweg vastgehouden door het sein dat veilig staat. Passeert een trein het sein, dan dooft binnen het seinsymbool en komt buiten het sein terug in de stand stop. Vanaf dat moment wordt de rijwegvasthouding overgenomen door de spoorbezetting. Achter de spoorbezetting (trein) komen de secties (met de daarin gelegen wissels en eventuele andere inrichtingen) om de beurt weer vrij. Deze secties zijn voor dit proces 'cascade' geschakeld.\n\nDit betekent dat een sectie pas vrijkomt nadat deze gecontroleerd heeft of de voorgaande sectie ook is vrijgekomen. Herroept men het sein dan wordt deze rijwegvasthouding pas opgeheven na minimaal 120 seconden. Dit heeft als voordeel wanneer er een trein door dit sein heen zou schieten de inrichtingen in ieder geval nog vastgelegd zijn waardoor de inrichtingen geen deel uit kunnen gaan maken van een andere rijweg.",
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Werking cascadeschakeling',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/cascadeschakeling1.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De TRDL heeft een rijweg ingesteld van spoor 1 (sein 108) naar spoor 62 (sein 210).',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/cascadeschakeling2.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Nadat trein 828 sein 108 gepasseerd is, komen de secties achter elkaar vrij.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/cascadeschakeling3.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Veronderstel dat sectie 3 niet vrijkomt. Dan zal, door de cascadeschakeling, ook sectie 4 niet vrijkomen en blijft de rijweg tussen sectie 3 en 5 er in staan.\n\nDe cascadeschakeling houdt hier de rijweg vast in sectie 4, omdat sectie 3 niet vrijgekomen is.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Two Track Pick Up (TTPU)',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Is er een rijweg ingesteld, dan is de eerste sectie achter het sein de afrijdsectie. Dit wil zeggen dat deze sectie de basis vormt voor het afbreken van de rijweg.\n\nBij TTPU heeft men het afbreken van de rijweg afhankelijk gemaakt van de bezetting van zowel de eerste als tweede sectie achter het sein. Dit om te voorkomen dat een rijweg ten onrechte vrijkomt als de eerste sectie achter het sein (afrijdsectie) even bezet raakt en dan weer vrijkomt. Door het even bezet zijn van de afrijdsectie na rijweginstelling kan dan de gehele rijweg vrijkomen. Dit kan aanleiding zijn tot een gevaarlijke situatie.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Werking TTPU',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ttpu1.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Stel dat sein 458 niet is uitgerust met TTPU...',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ttpu2.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Als er nu spoorbezetting ontstaat achter sein 458 in wisselsectie 457B en/of de sectie daarachter, dan valt sein 458 op rood en de overweg - die achter sein 458 ligt - blijft dicht liggen.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ttpu3.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Als de spoorbezetting in de wisselsectie 457B weg valt, gaat de overweg achter sein 458 weer open, blijft sein 458 rood tonen en komen wissels in de rijweg meteen weer vrij.\n\nDit is een gevaarlijke situatie! Omdat trein 1928 eerst een groen seinbeeld heeft gehad is de kans groot dat er niet meer voor stoptonend sein 458 gestopt kan worden. Als trein 1928 door stoptonend sein rijdt, rijdt deze over een open overweg en over wissels die niet meer vastliggen.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ttpu4.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Om dit te voorkomen zijn seinen die toegang geven richting bijv. een overweg uitgerust met TTPU. Dit betekent dat wanneer zich een dergelijke situatie voordoet, de wissels nog minimaal 120 seconden vergrendeld blijven liggen. Ook blijft de overweg nog minimaal 120 seconden aankondigen. Mocht de trein ondertussen voorbij het sein zijn, dan blijft de overweg normaal aankondigen. Pas wanneer de sectie achter het sein en de volgende sectie bezet geweest zijn vindt er normale 'afbraak' van de rijweg plaats.\n\nRisico blijft nog wel dat wanneer de eerste 2 secties achter het sein tegelijk bezet worden en de spoorbezetting er daarna weer uitvalt, de rijweg in één keer helemaal vrij komt. Dit risico is echter aanvaardbaar klein.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  const TitleText(
                    title: 'Ga snel naar',
                  ),
                  const SizedBoxH(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <NavButton>[
                      NavButton(
                        buttontext: 'Beveiliging Werkwijze',
                        destination: 'ww_beveiliging_main',
                      ),
                      NavButton(
                        buttontext: 'Beveiliging - Basis 2',
                        destination: 'ai_incidenten_beveiliging_basis2',
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIBeveiligingBasis1Navigation extends StatelessWidget {
  const AIBeveiligingBasis1Navigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIBeveiligingBasis1>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromAIBeveiligingBasis1 result) async {
        if (result == WhereToGoFromAIBeveiligingBasis1.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromAIBeveiligingBasis1.ww_beveiliging_main) {
          await Navigator.pushNamed(context, 'ww_beveiliging_main');
        } else if (result ==
            WhereToGoFromAIBeveiligingBasis1.ai_beveiliging_basis2) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis2');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromAIBeveiligingBasis1>>[
        const PopupMenuItem<WhereToGoFromAIBeveiligingBasis1>(
          value: WhereToGoFromAIBeveiligingBasis1.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIBeveiligingBasis1>(
          value: WhereToGoFromAIBeveiligingBasis1.ww_beveiliging_main,
          child: MenuItemContent(
            icon: Utils.iconWW,
            text: 'WW Beveiliging',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIBeveiligingBasis1>(
          value: WhereToGoFromAIBeveiligingBasis1.ai_beveiliging_basis2,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Beveiliging Basis 2',
          ),
        ),
      ],
    );
  }
}
