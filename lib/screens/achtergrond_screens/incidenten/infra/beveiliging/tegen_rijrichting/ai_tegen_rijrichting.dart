import '/all_imports.dart';

class AITegenRijrichting extends StatelessWidget {
  const AITegenRijrichting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AITegenRijrichtingNavigation(),
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
                    title: 'Tegen de rijrichting rijden',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Stel dat er een probleem ontstaat op het spoor waardoor je tegen de rijrichting in moet rijden, bijv. door een trein die defect gaat en moet worden opgehaald of een storing aan het spoor (sectiestoring), dan zijn er een aantal dingen waar je rekening mee moet houden.',
                  )
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Linkerspoorbeveiliging',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij linkerspoorbeveiliging is de werking van de overwegen afhankelijk van de ingesteld rijrichting.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_tegen_rijrichting_1.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Links rijden tegen de rijrichting',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Altijd met aanwijzing STS vertrekken;\n- Aanwijzing OVW voor alle overwegen op het baanvak;\n- Rijden op stationsafstand indien vrije baan een blok is.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_tegen_rijrichting_2.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "De rijrichting is ingesteld voor rechterspoor rijden. Het in lichtblauw aangegeven deel van de aankondiging is actief.\nAls er nu links gereden zou worden zou de overweg de trein te laat aankondigen. De overweg zou immers pas gaan aankondigen bij het lichtblauwe gedeelte dat vlak (soms enkele meteres) voor de overweg ligt. Dit mag alleen als de MCN in het bezit is van een aanwijzing OVW. De MCN zal dan de overweg moeten 'aanrijden'.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Rechts rijden tegen de rijrichting',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Rechts rijden tegen de rijrichting bij beveiligd linkerspoor mag niet, tenzij voldaan wordt aan de volgende voorwaarden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Er zijn geen overwegen;\n- Alle overwegen op het baanvak zijn voorzien van een middensectie en alle treinen worden voorzien van een aanwijzing OVW voor alle overwegen op het baanvak;\n- Het baanvak is uitgerust met ULS (Uitschakelen Linker Spoorbeveiliging).',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'ULS is een onderdeel van de beveiliging dat op een aantal baanvakken is ingebouwd. ULS zorgt ervoor, dat wanneer een trein rechts tegen de gekeerde rijrichting in moet rijden, beiden rijrichtingen weer worden ingeschakeld. Hierdoor gaan de overwegen weer werken en mogen er weer treinen rijden in het betrokken gebied.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Rechts rijden tegen de rijrichting - OVW zonder middensectie',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_tegen_rijrichting_3.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Op het bovenste spoor is de rijrichting ingesteld om links te rijden. Het in lichtblauw aangegeven deel van de aankondiging is actief.\nIndien er nu op het bovenste spoor rechts gereden zou worden, zou de overweg pas gaan aankondigen als de trein de overweg al is gepasseerd.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Rechts rijden tegen de rijrichting - OVW met middensectie',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Je moet wel een aanwijzing OVW voor deze overwegen afgeven, omdat de MCN deze overwegen moet aanrijden bij de sectie vlak voor de overweg.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Rechts rijden tegen de rijrichting - ULS toegepast',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Als de rijrichting voor rechts is ingesteld, kun je ULS niet toepassen. ULS kun je alleen toepassen als je de rijrichting hebt ingeschakeld voor links rijden. Je kunt immers pas iets uitschakelen nadat je het hebt ingeschakeld',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_tegen_rijrichting_4.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De aankondiging wordt actief vanaf de aankondigingslas A tot aan de aankondigingslas B. Dit betekent dat de overweg veel langer dan normaal zal aankondigen.\nNiet alle baanvakken in Nederland die met linkerspoor beveiliging zijn uitgerust hebben de mogelijkheid tot ULS.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Enkelspoorbeveiliging',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij enkelspoorbeveiliging is het spoor in beide richtingen gelijkwaardig beveiligd. De rijrichting keert automatisch door middel van rijweginstelling. In onderstaande tekening is er een rijweg ingesteld van A naar B.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_tegen_rijrichting_5.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Dubbel enkelspoorbeveiliging',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Als enkelspoorbeveiliging op twee of meer sporen is toegepast dan hebben we dubbel enkelspoor beveiliging. De werking van de beveiliging is hetzelfde. Als het mogelijk is worden de seinen voor het linkerspoor ook aan de linkerkant van het spoor geplaatst (beide sporen zijn dus in beide richtingen gelijkwaardig ingericht. Dubbel enkelspoor beveiliging kenmerkt zich door de groepjes van seinen langs de baan).\n\nOp onderstaande tekening op het bovenste spoor staat de situatie als er geen rijweg instelling heeft plaatsgevonden. De situatie is in rust. Als vanaf een van beide stations een rijweg ingesteld wordt over het rechter- of linkerspoor vallen de seinen in de tegengestelde rijrichting op rood. Het is dan niet mogelijk om hier tegengesteld een rijweg in te stellen. Na het passeren van de trein komt het sein dat de andere richting beveiligt weer uit de stand stop. Een trein kan dus in tegengestelde richting weer op veilig sein terugkeren.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_tegen_rijrichting_6.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Stel nu dat er een probleem ontstaat op het spoor waardoor de trein tegen de rijrichting in moet rijden. Bijv. door een trein die defect gaat en die moet worden teruggehaald. Dan zijn er zaken om rekening mee te houden. Bij dubbel enkelspoor is de werking van de overwegen op de vrije baan niet afhankelijk van rijrichting, de wipwapschakeling of middensectie is altijd actief.\n\nEnige uitzondering hierop is het terug laten rijden van een trein over hetzelfde spoor.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        '(Dubbel) enkelspoorbeveiliging - terug laten rijden van een trein over hetzelfde spoor met overweg(en)',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De trein is tot stilstand gekomen tussen B en A en moet terug rijden. De aankondiging A-B is uitgeschakeld en de trein rijdt pas bij B de OVW aan. De middensectie is immers altijd actief. Voordat de TRDL toestemming geeft om terug te rijden, moet de MCN in het bezit zijn van een aanwijzing OVW.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_tegen_rijrichting_7.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'N.B.: Het kan zijn dat de trein zich bevindt in de aankondigingssectie van meerdere overwegen. Een marge van 1500 meter wordt hiervoor aangehouden. De TRDL geeft een aanwijzing OVW af voor alle overwegen die zich 1500 meter vanaf de trein bevinden.',
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

class AITegenRijrichtingNavigation extends StatelessWidget {
  const AITegenRijrichtingNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_incidenten_basis) {
          await Navigator.pushNamed(context, 'ai_incidenten_basis');
        } else if (result == PopupNavigation.ai_seinen_basis1) {
          await Navigator.pushNamed(context, 'ai_seinen_basis1');
        } else if (result == PopupNavigation.ai_seinen_basis2) {
          await Navigator.pushNamed(context, 'ai_seinen_basis2');
        } else if (result == PopupNavigation.ai_beveiliging_basis1) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis1');
        } else if (result == PopupNavigation.ai_beveiliging_basis2) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis2');
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
          value: PopupNavigation.ai_incidenten_basis,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_seinen_basis1,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Seinen Basis 1',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_seinen_basis2,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Seinen Basis 2',
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
          value: PopupNavigation.ai_beveiliging_basis2,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Beveiliging Basis 2',
          ),
        ),
      ],
    );
  }
}