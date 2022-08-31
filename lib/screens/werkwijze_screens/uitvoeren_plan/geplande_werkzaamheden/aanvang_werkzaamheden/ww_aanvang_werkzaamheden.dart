import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWAanvangWerkzaamheden {
  home_screen,
  ai_aanvang_werkzaamheden
}

class WWAanvangWerkzaamheden extends StatelessWidget {
  const WWAanvangWerkzaamheden({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWAanvangWerkzaamheden>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWAanvangWerkzaamheden result) {
              if (result == WhereToGoFromWWAanvangWerkzaamheden.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWAanvangWerkzaamheden
                      .ai_aanvang_werkzaamheden) {
                Navigator.pushNamed(context, 'ai_aanvang_werkzaamheden');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWAanvangWerkzaamheden>>[
              PopupMenuItem<WhereToGoFromWWAanvangWerkzaamheden>(
                value: WhereToGoFromWWAanvangWerkzaamheden.home_screen,
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
              PopupMenuItem<WhereToGoFromWWAanvangWerkzaamheden>(
                value: WhereToGoFromWWAanvangWerkzaamheden
                    .ai_aanvang_werkzaamheden,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    const Text('AI Aanvang Werkzaamheden'),
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
                      title: 'Aanvang Werkzaamheden',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Neem de (veiligheids)maatregelen die in de WBI/WECO zijn vermeld of met de LWB zijn afgesproken;\n\n- Meld de LWB dat je de infracapaciteit benoemd op de WBI/WECO beschikbaar hebt gesteld voor werkzaamheden.',
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
                          'Bij geplande werkzaamheden wordt in de voorbereiding op de werkzaamheden een werkplekbeveiligingsinstructie (WBI) gemaakt. In de WBI/WECO worden de gemaakte afspraken voor de werkplekbeveiliging vastgelegd.\n\nVoorafgaand aan de werkzaamheden stellen TRDL en LWB samen vast of ze over dezelfde WBI/WECO beschikken.',
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
