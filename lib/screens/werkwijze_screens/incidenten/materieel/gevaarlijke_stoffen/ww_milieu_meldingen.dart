import '/all_imports.dart';

enum WhereToGoFromWWMilieuMeldingen {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_gevaarlijke_stoffen,
}

class WWMilieuMeldingen extends StatelessWidget {
  const WWMilieuMeldingen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWMilieuMeldingen>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWMilieuMeldingen result) async {
              if (result == WhereToGoFromWWMilieuMeldingen.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWMilieuMeldingen.ai_gevaarlijke_stoffen) {
                await Navigator.pushNamed(context, 'ai_gevaarlijke_stoffen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWMilieuMeldingen>>[
              const PopupMenuItem<WhereToGoFromWWMilieuMeldingen>(
                value: WhereToGoFromWWMilieuMeldingen.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWMilieuMeldingen>(
                value: WhereToGoFromWWMilieuMeldingen.ai_gevaarlijke_stoffen,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Gevaarlijke Stoffen',
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
                      title: 'Meldingen met betrekking tot het milieu',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Meldingen die je krijgt m.b.t. het milieu in of nabij de infra (zoals bodemvervuiling of geluidsoverlast) geef je door aan de MKS/BO.',
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
                      text: 'Overtreden van de omgevingsvergunning.',
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
                          'Alle activiteiten op emplacementen vallen onder omgevingsvergunningen. De MKS/BO meldt overtredingen van deze vergunningen aan de milieudienst.',
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
