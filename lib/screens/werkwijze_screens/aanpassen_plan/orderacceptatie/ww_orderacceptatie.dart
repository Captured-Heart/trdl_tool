import '/all_imports.dart';

enum WhereToGoFromWWOrderAcceptatie {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_orderacceptatie,
}

class WWOrderAcceptatie extends StatelessWidget {
  const WWOrderAcceptatie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWOrderAcceptatie>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWOrderAcceptatie result) async {
              if (result == WhereToGoFromWWOrderAcceptatie.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWOrderAcceptatie.ai_orderacceptatie) {
                await Navigator.pushNamed(context, 'ai_orderacceptatie');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWOrderAcceptatie>>[
              const PopupMenuItem<WhereToGoFromWWOrderAcceptatie>(
                value: WhereToGoFromWWOrderAcceptatie.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWOrderAcceptatie>(
                value: WhereToGoFromWWOrderAcceptatie.ai_orderacceptatie,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Orderacceptatie',
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
                      title: 'Orderacceptatie',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij een bovenlokale orderaanvraag toetst de DVL de aanvraag bij jou op verdringing op het emplacement conform plannormen. Bij een lokale orderaanvraag toets je zelf op verdringing conform plannormen.',
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
                      text: 'Conflicterend spoorgebruik.',
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
                          'De schaarse infracapaciteit is op basis van toedelingsregels verdeeld en verwerkt in het plan. Infragebruikers kunnen wijzigingen op het plan aanvragen.',
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
