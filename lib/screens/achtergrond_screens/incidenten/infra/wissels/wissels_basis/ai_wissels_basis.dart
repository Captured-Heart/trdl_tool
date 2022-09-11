import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIWisselsBasis {
  home_screen,
  ai_wissel_eindstand,
  ai_gestoord_wissel,
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
        actions: [
          PopupMenuButton<WhereToGoFromAIWisselsBasis>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIWisselsBasis result) {
              if (result == WhereToGoFromAIWisselsBasis.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIWisselsBasis.ai_wissel_eindstand) {
                Navigator.pushNamed(context, 'ai_wissel_eindstand');
              } else if (result ==
                  WhereToGoFromAIWisselsBasis.ai_gestoord_wissel) {
                Navigator.pushNamed(context, 'ai_gestoord_wissel');
              } else if (result ==
                  WhereToGoFromAIWisselsBasis.ai_opengereden_wissel) {
                Navigator.pushNamed(context, 'ai_opengereden_wissel');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIWisselsBasis>>[
              const PopupMenuItem<WhereToGoFromAIWisselsBasis>(
                value: WhereToGoFromAIWisselsBasis.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIWisselsBasis>(
                value: WhereToGoFromAIWisselsBasis.ai_wissel_eindstand,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Wissel Eindstand',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIWisselsBasis>(
                value: WhereToGoFromAIWisselsBasis.ai_gestoord_wissel,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Gestoord Wissel',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIWisselsBasis>(
                value: WhereToGoFromAIWisselsBasis.ai_opengereden_wissel,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Opengereden Wissel',
                ),
              ),
            ],
          ),
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
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
                          'Bij centraal bediende wissels zorgt een wisselsteller voor de omlegging van de wisseltongen. In deze wisselsteller zit behalve de motor, ook het mechanisme dat controleert of de wisseltongen in een goede \'eindstand\' liggen. Op onderstaande foto zijn de contactvingers (in het blauw) van de stellerkast goed te zien.',
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
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
