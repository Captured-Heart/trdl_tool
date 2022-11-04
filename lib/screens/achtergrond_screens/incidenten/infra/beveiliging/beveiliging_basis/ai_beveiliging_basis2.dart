import '/all_imports.dart';

class AIBeveiligingBasis2 extends StatelessWidget {
  const AIBeveiligingBasis2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIBeveiligingBasis2Navigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Beveiliging - Basisinformatie deel 2',
                  ),
                  SizedBoxH(),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Inleiding',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'In deze achtergrondinformatie kun je informatie vinden over beveiligingen die niet zijn besproken in de basisinformatie deel 1:',
                  ),
                  BodyText(
                    indents: 1,
                    text: '- Dubbelspoor;\n- EBS;\n- VPI.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Dubbelspoor beveiliging',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij dubbelspoor beveiliging is het baanvak alleen ingericht en beveiligd voor rechts rijden. Als bij deze vrije baanbeveiliging een trein over het linker spoor zou moeten rijden dan kan dat niet beveiligd. Deze beveiliging komt nog zelden voor.\nAls we toch over het linker spoor gaan rijden, dan spreken we van `verkeerd spoor’ rijden. Om de MCN duidelijk te maken dat hij Verkeerd Spoor gaat rijden, krijgt hij een opdracht hoe hij het spoor toch veilig kan berijden. Een dergelijke opdracht heet een aanwijzing Verkeerd Spoor (VS). Hij moet dan de trein uit om bij de TRDL deze aanwijzing te halen en dit samen met de TRDL invullen. De aanwijzing Verkeerd spoor is een beeldinstructie voor de MCN waarop staat hoe hij moet handelen. Als de MCN het verkeerd spoor oprijdt, wordt hij door een bord VS hierover geïnformeerd.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_beveiliging_basis2_1.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Emplacementsbeveiliging EBS',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "EBS is de 'Elektronische Beveiliging Simis'. 'Simis' staat op zijn beurt weer voor 'Sicheres Mikrocomputersysteem Siemens'. EBS kan worden bediend vanuit Procesleiding Rijwegen, maar sommige opdrachten zijn alleen vanaf de EBS bedieningsterminal te geven.\n\nEBS is grotendeels uitgerust met dubbele computers. Dit is enerzijds om storingen tot een minimum te beperken, anderzijds geeft dat een 'fail-safe' garantie. Bij een aantal computerstoringen zorgt het systeem ervoor dat de stand-by computer de functies overneemt. Dit gebeurt direct. De gestoorde computer zal zichzelf resetten en als reserve fungeren. De gevolgen zijn dan ook vaak minimaal.\n\nIn het EBS-gebied hebben we te maken met actieve- en passieve secties.",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Passieve sectie: Sectie waar de rijrichting verdwijnt als een treinbeweging zich geheel in de sectie bevindt;\n- Actieve sectie: Sectie waarin de rijrichting net zolang blijft, tot de sectie geheel verlaten is in de richting zoals die is ingesteld. Keert men een trein in deze actieve sectie, dan blijft er een restrijweg.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Rijweginstelling met/zonder spoorbezetting',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor het veilig komen van seinen is spoorbezetting of rijrichting (ingestelde rijweg) nodig. Dit geldt voor de geïsoleerde (gecontroleerde) sporen. Vanaf de opstelsporen (gedeeltelijk geïsoleerd) is dit niet nodig. Voor niet-detecterende voertuigen kan dit een probleem opleveren als men een rijweg in wil stellen met ROZ.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'VPI',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "VPI staat voor Vital Processor Interlocking. Het is een beveiligingssysteem dat op dezelfde manier werkt als NX, maar elektronisch. Deze beveiliging werkt in combinatie met EBP. EBP zorgt voor bediening en signalering, VPI voor de veiligheid.\nOmdat EBS voor kleinere emplacementen iets te omvangrijk is, werd gezocht naar een ander systeem. Bij EBS beveiliging moet altijd een minimum aantal computers opgesteld worden voor een volledige installatie. Voor een groot emplacement is dit geen probleem omdat de capaciteit van deze computers optimaal benut wordt. Bij kleinere emplacementen zou de installatie in verhouding tot de grootte van het emplacement te duur worden. Het nieuwe systeem werd gevonden bij de dochteronderneming van GRS, waar de oude relais beveiliging vandaan kwam.\n\nAls eerste is een proef gehouden in 1992 met het systeem en verving de relais beveiliging van Hoorn - Enkhuizen. De bediening van de gehele beveiliging gebeurd nog steeds door EBP. De veiligheidscircuits die eerst nog in combinatie met EBP werden toegepast, worden nu vervangen door VPI, een elektronische beveiliging.\nHet verschil tussen EBS en VPI zijn de computers. Bij EBS word elk computer systeem dubbel uitgevoerd. Alle commando's worden door 2 onafhankelijke computers synchroon verwerkt. De uitkomsten worden met elkaar vergeleken. Bij een verschil wordt het commando (rijweg instelling bijvoorbeeld) niet uitgevoerd.\n\nBij VPI is echter maar één enkele processor die alle functies van de beveiliging verzorgt. De controle vindt op een andere manier plaats dan met EBS. Dit gebeurt door achteraan de code's die in de processor gebruikt worden een controle getal te hangen welke door een wiskundige functie bepaald is. Hiermee wordt de code gecontroleerd en kunnen onjuistheden worden voorkomen.",
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

class AIBeveiligingBasis2Navigation extends StatelessWidget {
  const AIBeveiligingBasis2Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_detectie_basis) {
          await Navigator.pushNamed(context, 'ai_detectie_basis');
        } else if (result == PopupNavigation.ai_beveiliging_basis1) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis1');
        } else if (result == PopupNavigation.ai_beveiliging_main) {
          await Navigator.pushNamed(context, 'ai_beveiliging_main');
        } else if (result == PopupNavigation.ai_seinen_basis1) {
          await Navigator.pushNamed(context, 'ai_seinen_basis1');
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
          value: PopupNavigation.ai_detectie_basis,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Detectie',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_beveiliging_basis1,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Beveiliging Basis 1',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_beveiliging_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Beveiliging',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_seinen_basis1,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Seinen',
          ),
        ),
      ],
    );
  }
}