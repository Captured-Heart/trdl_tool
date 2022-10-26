import '/all_imports.dart';

enum WhereToGoFromAIWisselsBasis {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_wissel_eindstand,
  // ignore: constant_identifier_names
  ai_gestoord_wissel,
  // ignore: constant_identifier_names
  ai_opengereden_wissel,
}

class AIWisselsBasis extends StatelessWidget {
  const AIWisselsBasis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIWisselsBasis>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIWisselsBasis result) async {
              if (result == WhereToGoFromAIWisselsBasis.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIWisselsBasis.ai_wissel_eindstand) {
                await Navigator.pushNamed(context, 'ai_wissel_eindstand');
              } else if (result ==
                  WhereToGoFromAIWisselsBasis.ai_gestoord_wissel) {
                await Navigator.pushNamed(context, 'ai_gestoord_wissel');
              } else if (result ==
                  WhereToGoFromAIWisselsBasis.ai_opengereden_wissel) {
                await Navigator.pushNamed(context, 'ai_opengereden_wissel');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIWisselsBasis>>[
              const PopupMenuItem<WhereToGoFromAIWisselsBasis>(
                value: WhereToGoFromAIWisselsBasis.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIWisselsBasis>(
                value: WhereToGoFromAIWisselsBasis.ai_wissel_eindstand,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Wissel Eindstand',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIWisselsBasis>(
                value: WhereToGoFromAIWisselsBasis.ai_gestoord_wissel,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Gestoord Wissel',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIWisselsBasis>(
                value: WhereToGoFromAIWisselsBasis.ai_opengereden_wissel,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Opengereden Wissel',
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
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Wissels - basisinformatie',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Definitie',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Een wissel is een infra object waarmee de fysieke vertakking in het spoorwegnet wordt gerealiseerd.',
                    ),
                  ],
                ),
              ),
            ),
            //CARD #2
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'Onderdelen van een wissel',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_1.jpg',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '1. Wisseltongen',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'De bewegende onderdelen die de trein van het ene naar het andere spoor leiden, worden bij een standaard wissel wisseltongen genoemd. Bij meerdelige wissels beweegt het puntstuk ook.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '2. Wisselstangen',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Deze zorgen ervoor dat beide wisseltongen gelijktijdig verplaatst worden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '3. Puntstuk',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Een puntstuk in een wissel is het punt waar twee spoorstaven elkaar kruisen.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '4. Strijkregel of contrarail',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'De rail tegenover het puntstuk is op die plek voorzien van een strijkregel om ontsporingen te voorkomen.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '5. Stellerkast of wisselsteller',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          "Bij centraal bediende wissels zorgt een wisselsteller voor de omlegging van de wisseltongen. In deze wisselsteller zit behalve de motor, ook het mechanisme dat controleert of de wisseltongen in een goede 'eindstand' liggen. Op onderstaande foto zijn de contactvingers (in het blauw) van de stellerkast goed te zien.",
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_2.jpg',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Punststuk',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_3.jpg',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Strijkregel/Contrarail',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_4.jpg',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Stellerkast/Wisselsteller',
                    ),
                    SizedBoxH(),
                  ],
                ),
              ),
            ),
            //CARD #3
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'Wisselstanden',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Een wissel heeft twee standen. De stand van een wissel wordt bepaald door vanaf de voorzijde van het wissel naar het puntstuk te kijken (kijk tegen de punt in). De voorkant van het wissel bevindt zich bij de letter A, de achterkant of hak van het wissel bevindt zich bij de letter B/C.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_5gif.gif',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_6.jpg',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Linksleidend - Er is ruimte tussen de linker wisseltong en de linker spoorstaaf; de trein gaat op dit wissel naar links.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_7.jpg',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Rechtsleidend - Er is ruimte tussen de rechter wisseltong en de rechter spoorstaaf; de trein gaat op dit wissel naar rechts.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_8.jpg',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'De wisseltong die tegen de spoorstaaf aanligt noemen we de aanliggende tong. De wisseltong die vrij ligt van de spoorstaaf noemen we de afliggende tong.',
                    ),
                    SizedBoxH(),
                  ],
                ),
              ),
            ),
            //CARD #4
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: <Widget>[
                    const SubTitleText(
                      subtitle: 'Hoekverhouding',
                    ),
                    const SizedBoxH(),
                    const BodyText(
                      indents: 0,
                      text:
                          "Een wissel bevat minimaal één stand waarin de trein afbuigt van zijn oorspronkelijke richting, een 'bocht' dus. Standaard wissels zijn er in verschillende maten. Hoe scherper de bocht, hoe lager de maximum snelheid waarmee een trein de bocht mag berijden. De afbuiging van een wissel wordt uitgedrukt in een hoekverhouding. Een wissel 1 : 9 (spreek uit: één op negen) wijkt een meter uit per negen meter doorgaand spoor. De hoekverhouding geeft aan hoeveel meter een trein het wissel op rijdt en een zijdelingse verplaatsing van een meter bereikt heeft. Dit wil zeggen dat na 9 meter de verplaatsing zijdelings 1 meter is.\n\nAls er in de BVS niets bij het wissel staat aangegeven hebben we te maken met een 1 : 9 wissel en geldt de maximale snelheid van 40 km/h in de omgelegde stand.\n\nMaximum snelheden gerelateerd aan de hoekverhouding:",
                    ),
                    const SizedBoxH(),
                    Table(
                      border: TableBorder.all(),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: const <TableRow>[
                        TableRow(
                          children: <TableText>[
                            TableText(text: '1:9'),
                            TableText(text: '40 km/u'),
                          ],
                        ),
                        TableRow(
                          children: <TableText>[
                            TableText(text: '1:12'),
                            TableText(text: '60 km/u'),
                          ],
                        ),
                        TableRow(
                          children: <TableText>[
                            TableText(text: '1:15'),
                            TableText(text: '80 km/u'),
                          ],
                        ),
                        TableRow(
                          children: <TableText>[
                            TableText(text: '1:15 (Symmetrisch)'),
                            TableText(text: '100 km/u'),
                          ],
                        ),
                        TableRow(
                          children: <TableText>[
                            TableText(text: '1:18'),
                            TableText(text: '80 km/u'),
                          ],
                        ),
                        TableRow(
                          children: <TableText>[
                            TableText(text: '1:20 (Symmetrisch)'),
                            TableText(text: '125 km/u'),
                          ],
                        ),
                        TableRow(
                          children: <TableText>[
                            TableText(text: '1:29'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                        TableRow(
                          children: <TableText>[
                            TableText(text: '1:34,7'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //CARD #5
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: 'Soorten wissels - NCBG',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Handwissel',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Op rangeerterreinen worden veel wissels handmatig bediend. Deze wissels noemen we handwissels of ter plaatse bediende wissels.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Bromwissel',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Dit wissel kan men met een druk op een knop omleggen, door middel van de EHO (Electrohydraulische Omzetstoel) of door middel van een voetpomp: de VHO (Voethydraulische Omzetstoel).',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_9.jpg',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Handwissel',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_wissels_basis_10.jpg',
                    ),
                    BodyText(
                      indents: 0,
                      text: 'Handwissel',
                    ),

                    //TODO: Hier verder met ai_wissels_basis!
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