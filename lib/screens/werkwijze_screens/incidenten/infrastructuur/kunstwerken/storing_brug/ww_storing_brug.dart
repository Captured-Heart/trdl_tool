import '/all_imports.dart';

enum WhereToGoFromWWStoringBrug {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_storing_brug,
}

class WWStoringBrug extends StatelessWidget {
  const WWStoringBrug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWStoringBrug>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWStoringBrug result) async {
              if (result == WhereToGoFromWWStoringBrug.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWStoringBrug.ai_storing_brug) {
                await Navigator.pushNamed(context, 'ai_storing_brug');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWStoringBrug>>[
              const PopupMenuItem<WhereToGoFromWWStoringBrug>(
                value: WhereToGoFromWWStoringBrug.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWStoringBrug>(
                value: WhereToGoFromWWStoringBrug.ai_storing_brug,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Storing Brug',
                ),
              ),
            ],
          ),
          const HomeButton(),
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
                      title: 'Storing beweegbare brug',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je mag een gestoorde beweegbare brug alleen laten berijden na toestemming van de storingsdienst.',
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
                  children: const <Widget>[
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
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wanneer een beweegbare brug door een storing niet in de vergrendeling ligt, is het beweegbare gedeelte van de brug niet veilig berijdbaar. Een storingsmonteur kan ter plaatse beoordelen of en onder welke voorwaarden de brug bereden kan worden.',
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
