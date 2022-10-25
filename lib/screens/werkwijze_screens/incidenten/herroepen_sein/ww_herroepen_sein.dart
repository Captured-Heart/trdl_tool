import '/all_imports.dart';

enum WhereToGoFromWWHerroepenSein {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_incidenten_main,
}

class WWHerroepenSein extends StatelessWidget {
  const WWHerroepenSein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWHerroepenSein>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWHerroepenSein result) async {
              if (result == WhereToGoFromWWHerroepenSein.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWHerroepenSein.ai_incidenten_main) {
                await Navigator.pushNamed(context, 'ai_incidenten_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWHerroepenSein>>[
              const PopupMenuItem<WhereToGoFromWWHerroepenSein>(
                value: WhereToGoFromWWHerroepenSein.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWHerroepenSein>(
                value: WhereToGoFromWWHerroepenSein.ai_incidenten_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Incidenten',
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
                      title: 'Herroepen van een sein',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Voor bijsturing mag je een sein herroepen nadat de MCN is ingelicht of wanneer je zeker weet dat er geen MCN op of bij de trein aanwezig is.\n\nBenader de machinist via de bestaande communicatiemogelijkheden. Als je geen contact krijgt, herroep je het sein.',
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
                      text: 'Het ten onrechte herroepen van seinen.',
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
                          'Het herroepen van een sein kan noodzakelijk zijn om een verstoring van de treindienst te voorkomen of beperken. Bij het herroepen van een sein voor bijsturing is het inlichten van de MCN wenselijk, om hem niet te laten schrikken van een wisselend seinbeeld.',
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
