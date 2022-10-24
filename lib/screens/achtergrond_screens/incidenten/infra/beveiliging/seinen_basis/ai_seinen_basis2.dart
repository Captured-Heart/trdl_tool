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
          ],
        ),
      ),
    );
  }
}
