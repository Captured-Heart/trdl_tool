import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWRoestvorming {
  home_screen,
  ai_roestvorming,
  ai_beveiliging_basis1,
  ai_beveiliging_basis2,
}

class WWRoestvorming extends StatelessWidget {
  const WWRoestvorming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWRoestvorming>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWRoestvorming result) {
              if (result == WhereToGoFromWWRoestvorming.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWRoestvorming.ai_roestvorming) {
                Navigator.pushNamed(context, 'ai_roestvorming');
              } else if (result ==
                  WhereToGoFromWWRoestvorming.ai_beveiliging_basis1) {
                Navigator.pushNamed(context, 'ai_beveiliging_basis1');
              } else if (result ==
                  WhereToGoFromWWRoestvorming.ai_beveiliging_basis2) {
                Navigator.pushNamed(context, 'ai_beveiliging_basis2');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWRoestvorming>>[
              PopupMenuItem<WhereToGoFromWWRoestvorming>(
                value: WhereToGoFromWWRoestvorming.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWRoestvorming>(
                value: WhereToGoFromWWRoestvorming.ai_roestvorming,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Roestvorming'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWRoestvorming>(
                value: WhereToGoFromWWRoestvorming.ai_beveiliging_basis1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Beveiliging Basis 1'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWRoestvorming>(
                value: WhereToGoFromWWRoestvorming.ai_beveiliging_basis2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Beveiliging Basis 2'),
                  ],
                ),
              ),
            ],
          ),
          const HomeButton(),
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
                      title: 'Roestvorming op geïsoleerde sporen',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wanneer de norm voor roestvorming overschreden is, voorkom je rijweginstelling naar de betrokken infra en pas je de procedure roestrijden toe:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Leg de wissels in de rijweg vast;\n\n- Stel tegengestelde rijwegen uit;\n\n- Geef voor de overweg(en) in de rijweg een aanwijzing OVW af;\n\n- Stel een rijweg in over het betreffende spoor met geel knipper;\n\n- Volg de trein op het scherm;\n\n- Laat de MCN zich binnen melden.',
                    ),
                  ],
                ),
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SubTitleText(
                      subtitle: Strings.risico,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                    ),
                  ],
                ),
              ),
            ),
            /*CONTEXT CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Vuil en roest verminderen de kwaliteit van het wiel-rail contact. Om deze kwaliteit op voldoende niveau te handhaven moet het spoor regelmatig worden bereden. Het regelmatig berijden met het doel om de kwaliteit van de treindetectie op niveau te houden wordt roestrijden genoemd.',
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
