import '../../../../../../widgets/image_widgets/insert_image.dart';
import '/all_imports.dart';

enum WhereToGoFromAISeinenBasis2 {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_incidenten_basis,
  // ignore: constant_identifier_names
  ai_seinen_basis1,
  // ignore: constant_identifier_names
  ai_beveiliging_basis1,
  // ignore: constant_identifier_names
  ai_beveiliging_basis2,
  // ignore: constant_identifier_names
  ai_tegen_rijrichting,
  // ignore: constant_identifier_names
  ai_veiligheidsstoring_sein,
}

class AISeinenBasis2 extends StatelessWidget {
  const AISeinenBasis2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAISeinenBasis2>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAISeinenBasis2 result) async {
              if (result == WhereToGoFromAISeinenBasis2.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAISeinenBasis2.ai_incidenten_basis) {
                await Navigator.pushNamed(context, 'ai_incidenten_basis');
              } else if (result ==
                  WhereToGoFromAISeinenBasis2.ai_seinen_basis1) {
                await Navigator.pushNamed(context, 'ai_seinen_basis1');
              } else if (result ==
                  WhereToGoFromAISeinenBasis2.ai_beveiliging_basis1) {
                await Navigator.pushNamed(context, 'ai_beveiliging_basis1');
              } else if (result ==
                  WhereToGoFromAISeinenBasis2.ai_beveiliging_basis2) {
                await Navigator.pushNamed(context, 'ai_beveiliging_basis2');
              } else if (result ==
                  WhereToGoFromAISeinenBasis2.ai_tegen_rijrichting) {
                await Navigator.pushNamed(context, 'ai_tegen_rijrichting');
              } else if (result ==
                  WhereToGoFromAISeinenBasis2.ai_veiligheidsstoring_sein) {
                await Navigator.pushNamed(
                  context,
                  'ai_veiligheidsstoring_sein',
                );
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAISeinenBasis2>>[
              const PopupMenuItem<WhereToGoFromAISeinenBasis2>(
                value: WhereToGoFromAISeinenBasis2.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Seinen - basisinformatie 2',
                    ),
                    SizedBoxH(),
                  ],
                ),
              ),
            ),
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: "Sein komt niet uit de stand 'Stop'",
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Mogelijk oorzaken voor het niet uit de stand stop komen zijn:',
                    ),
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
              ),
            ),
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
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
                            'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_1.png'),
                    SizedBoxH(),
                    InsertImage(
                        image:
                            'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_2.png'),
                    SizedBoxH(),
                    InsertImage(
                        image:
                            'assets/images/achtergrond_info/incidenten/ai_seinen_basis2_3.png'),
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
