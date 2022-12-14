import '/all_imports.dart';

class AISeinenBasis2 extends StatelessWidget {
  const AISeinenBasis2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AISeinenBasis2Navigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(title: 'Seinen - basisinformatie const 2'),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: "Sein komt niet uit de stand 'Stop'",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Mogelijk oorzaken voor het niet uit de stand stop komen zijn:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Wisselstoring;\n- Sectiestoring;\n- Seinstoring;\n- Wissel niet in de eindstand;\n- Storing aan de codegever;\n- Verhindering',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Er wordt een onderscheid gemaakt tussen seinen zonder en mét een 'P':",
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: "Stoptonend sein zonder 'P'",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'In sommige gevallen zal het noodzakelijk zijn de trein verder te laten rijden door middel van het afgeven van een aanwijzing stoptonend sein (STS).\nAfhankelijk van de oorzaak van het niet uit de stand stop komen van het sein kan het zijn dat de aanwijzing STS vooraf wordt gegaan van een schouwopdracht of een controle opdracht.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: "Stoptonend sein met 'P'",
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Ook op de vrije baan kunnen seinen door een storing 'stop' tonen. Als de MCN contact met jou opneemt, mag je de MCN toestemming geven het stoptonende P-sein te passeren, tenzij je op de hoogte bent van:",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Concreet gevaar achter het sein, en/of;\n- Blokbezetting achter het sein (tenzij het hulpverlening betreft).',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Hij mag alle daarna komende opeenvolgende stoptonende seinen met 'P' op zicht voorbijrijden, waarbij hij rekening dient te houden met het niet of niet juist functioneren van eventueel achter de P-seinen gelegen automatische overwegbeveiligingen, totdat hij een hoofdsein tegenkomt dat een beter seinbeeld dan stop toont.\nKan de MCN geen contact met de TRDL krijgen dan mag hij een stoptonend sein met 'P' voorbijrijden. De letter P staat immers voor 'Permissief'. Ook in dit geval mag hij alle daarna komende opeenvolgende stoptonende seinen met 'P' op zicht voorbijrijden.\nEen stoptonend bediend sein of een stoptonend automatisch sein niet gemerkt met 'P' mag de MCN NOOIT passeren, zonder overleg met de TRDL.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Codegever',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De codegever is een apparaat ingebouwd in de beveiliging dat er voor zorgt dat seinen een knipperend seinbeeld en cijfer kunnen tonen (alleen bij relaisbeveiliging). Als je als TRDL de melding krijgt van een gestoorde codegever is het niet meer mogelijk om seinen te laten knipperen.',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: 'Gestoorde codegever',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een gestoorde codegever betekent dat de beveiliging niet meer in staat is een knipperend seinbeeld te tonen of een knipperend cijfer in een cijferbak. Je krijgt op het overzichtsscherm in het statusblok en in het systeemmeldingenvenster een melding van een defecte codegever.\nBij een defecte codegever zorgt het fail-safe-principe er dan voor dat de seinbeelden als volgt vervangen worden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Een sein dat groenknipper moet tonen, toont geel;\n- Een sein dat geelknipper moet tonen, toont rood;\n- Een sein met knipperend cijfer in de cijferbak valt weg.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Laat via het MKS-BO de codegever herstellen. Tot die tijd neemt de beveiliging het gewoon over. Alleen in het geval van geelknipper moet je een aanwijzing STS afgeven, omdat de beveiliging terugvalt op het seinbeeld rood.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_1.png',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_2.png',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_3.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle:
                        'Onjuist seinbeeld / Gedoofd sein / Slecht zichtbaar sein',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Als TRDL ben je verantwoordelijk voor de bediening van de seinen in jouw TRDLgebied. Deze kunnen onverwacht gedoofd zijn, een onjuist seinbeeld tonen of slecht zichtbaar zijn. Als dat eenmaal bekend is, moeten de MCN weten dat zij zo'n gedoofd, onjuist of slecht zichtbaar sein naderen. Zij zullen bij het naderen van het sein extra alert zijn om vervolgens te handelen volgens de bepalingen in het Handboek Machinist. Het failsafe principe zorgt ervoor dat de systemen die zorgen voor de seinbeelden veilig functioneren.\nAls een sein langs de baan niet het juiste seinbeeld toont, is gedoofd of slecht zichtbaar is, wordt de MCN niet goed geïnformeerd over de toestand in het volgende spoorgedeelte.\nBij een gedoofd lichtsein kunnen in sommige situaties te grote risico's ontstaan; Om eventuele hieruit voortvloeiende ongelukken te voorkomen moet je maatregelen nemen. Deze bestaan uit het controleren van het aangestuurde seinbeeld, het signaleren van gedoofde seinen en eventueel het tonen van restrictiever seinbeeld in het betreffende sein of een ander sein.\nJe handelt als volgt:",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Neem risico reducerende maatregelen;\n- Informeer de MCN over de toestand van het sein, vóórdat je een rijweg instelt naar het betrokken sein;\n- Geef na rijweginstelling de MCN toestemming het sein te passeren;\n- Verbied het voorbijrijden van een gedoofd P-sein als je weet van concreet gevaar en/of blokbezetting achter het sein;\n- Meld dit in alle gevallen aan de MKS-BO.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_4.png',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Slecht zichbaar sein',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Als TRDL zorg je ervoor dat de seinverlichting wordt aangepast aan de diverse omstandigheden. Vaak zet je deze 's nachts in de lage stand, maar je kunt je voorstellen dat dat niet handig is bij dichte mist.\nEen sein kan ook slecht zichtbaar zijn door bijvoorbeeld weersomstandigheden. Hieronder zie je een voorbeeld van sneeuw die het sein slecht zichtbaar maken. Als dit het geval is, meld je dit aan het MKS/BO. Na rijweginstelling geef je de MCN toestemming om het sein te passeren.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_5.png',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Gedoofd sein',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een defecte lamp of relais kan een oorzaak zijn van een gedoofd sein. Vaak zal een MCN of een derde melding doen van een seinstoring, want in de signalering op jouw beeldscherm is niets van deze storing te zien.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Handboek Machinist',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Als een MCN een gedoofd hoofdsein of een hoofdsein met een onjuist seinbeeld tegenkomt, meldt hij dit onmiddellijk aan jou en handelt hij volgens het volgende schema.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_6.png',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Onjuist seinbeeld',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een onjuist sein is een sein, dat een seinbeeld toont dat niet in het Seinenboek voorkomt; Bijv. een sein waarvan twee lampen tegelijk branden.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_7.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(subtitle: 'Overzicht Seinenblad'),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Het kan zijn dat de MCN belt met de vraag of het getoonde seinbeeld juist is. Met behulp van het 'Overzicht Seinen blad' (OS-blad ofwel seinbeeldenkaart) uit de BVS kun je controleren of het seinbeeld dat de MCN opgeeft juist is. Op het OS-blad wordt namelijk schematisch het verband tussen seinbeelden van opeenvolgende seinen van één richting aangegeven. In een rechthoek staan de seinen aangegeven door het nummer van het sein. Daaronder staan de seinbeelden opgesomd die het sein kan tonen. Staat naast de rechthoek een getal, dan geeft dit de afstand tot het volgende sein aan.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Op een seinbeeldenkaart kun je controleren of het seinbeeld dat de MCN heeft gezien door het betreffende sein kan worden getoond. Je gebruikt de seinbeeldenkaart als volgt:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Zoek de seinbeeldenkaart voor de juiste rijrichting. Let daarbij op het symbool rechtsonder;',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_8.png',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Zoek het sein op waarvan je het seinbeeld wilt weten;',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        '- Volg de lijn vanaf dat getoonde seinbeeld terug naar het sein daarvoor',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Voorbeelden',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_9.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Als sein 104 geel toont, dan toont sein 108 geel.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_10.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Als sein 104 ROZ toont dan toont sein 110 geel.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Kom je bij een afslaande lijn dan mag je die volgen. Bij een kruisende lijn mag je alleen de afslaande lijn volgen als in de hoek die de lijnen met elkaar maken, een teken is aangebracht.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_11.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Je kunt het seinbeeld lezen van:',
                  ),
                  BodyText(
                    indents: 1,
                    text: '- A naar B;\n- A naar C;\n- A naar G.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_12.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'Je kunt het seinbeeld NIET lezen van:',
                  ),
                  BodyText(
                    indents: 1,
                    text: '- A naar D;\n- A naar E;\n- A naar F.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Symbolen die voorkomen op OS-bladen',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_13.png',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_14.png',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_15.png',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_16.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'N.B.: Bij de getekende wissels is de verhouding 1:9, indien de verhouding anders is wordt dit aangegeven in de scherpe hoek.',
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

class AISeinenBasis2Navigation extends StatelessWidget {
  const AISeinenBasis2Navigation({Key? key}) : super(key: key);

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
        } else if (result == PopupNavigation.ai_beveiliging_basis1) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis1');
        } else if (result == PopupNavigation.ai_beveiliging_basis2) {
          await Navigator.pushNamed(context, 'ai_beveiliging_basis2');
        } else if (result == PopupNavigation.ai_tegen_rijrichting) {
          await Navigator.pushNamed(context, 'ai_tegen_rijrichting');
        } else if (result == PopupNavigation.ai_veiligheidsstoring_sein) {
          await Navigator.pushNamed(
            context,
            'ai_veiligheidsstoring_sein',
          );
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
      ],
    );
  }
}