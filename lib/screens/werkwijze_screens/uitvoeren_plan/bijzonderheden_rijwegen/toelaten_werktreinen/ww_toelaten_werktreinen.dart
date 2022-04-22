import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWToelatenWerktreinen {
  home,
  wwGeplandeWerkzaamheden,
  aiToelatenWerktreinen,
  aiGeplandeWerkzaamheden
}

class WWToelatenWerktreinen extends StatelessWidget {
  const WWToelatenWerktreinen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWToelatenWerktreinen>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWToelatenWerktreinen result) {
              if (result == WhereToGoFromWWToelatenWerktreinen.home) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWToelatenWerktreinen.wwGeplandeWerkzaamheden) {
                Navigator.pushNamed(context, 'ww_geplande_werkzaamheden_main');
              } else if (result ==
                  WhereToGoFromWWToelatenWerktreinen.aiToelatenWerktreinen) {
                Navigator.pushNamed(context, 'ai_toelaten_werktreinen');
              } else if (result ==
                  WhereToGoFromWWToelatenWerktreinen.aiGeplandeWerkzaamheden) {
                Navigator.pushNamed(context, 'ai_geplande_werkzaamheden_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWToelatenWerktreinen>>[
              const PopupMenuItem<WhereToGoFromWWToelatenWerktreinen>(
                value: WhereToGoFromWWToelatenWerktreinen.home,
                child: Text('Home'),
              ),
              const PopupMenuItem<WhereToGoFromWWToelatenWerktreinen>(
                value:
                    WhereToGoFromWWToelatenWerktreinen.wwGeplandeWerkzaamheden,
                child: Text('WW Geplande Werkzaamheden'),
              ),
              const PopupMenuItem<WhereToGoFromWWToelatenWerktreinen>(
                value: WhereToGoFromWWToelatenWerktreinen.aiToelatenWerktreinen,
                child: Text('AI Toelaten Werktreinen'),
              ),
              const PopupMenuItem<WhereToGoFromWWToelatenWerktreinen>(
                value:
                    WhereToGoFromWWToelatenWerktreinen.aiGeplandeWerkzaamheden,
                child: Text('AI Geplande Werkzaamheden'),
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
                      title: 'Toelaten Werktreinen',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Overleg met de LWB;\n\n- Hef éénmalig de daarvoor noodzakelijke veiligheidsmaatregelen op;\n\n- Laat de werktrein na overleg met de LWB op een veilige manier toe tot de beschikbaar gestelde infracapaciteit;\n\n- Breng de veiligheidsmaatregelen weer aan na het passeren van de werktrein.',
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
                          'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
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
                          'Op de werkplek zijn de werkenden door middel van veiligheidsmaatregelen beschermd tegen aanrijdgevaar. Op het moment dat een trein noodzakelijk voor de werkzaamheden toegelaten moet worden, geeft de LWB toestemming als de werkenden adequaat beschermd zijn.\n\nVoorafgaand aan de werkzaamheden stellen TRDL en LWB samen vast of ze over dezelfde WBI/WECO beschikken.',
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
