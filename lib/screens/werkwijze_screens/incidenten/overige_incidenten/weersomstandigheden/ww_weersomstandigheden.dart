import '/all_imports.dart';

enum WhereToGoFromWWWeersomstandigheden {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_weersomstandigheden,
  // ignore: constant_identifier_names
  ai_overige_incidenten,
}

class WWWeersomstandigheden extends StatelessWidget {
  const WWWeersomstandigheden({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWWeersomstandigheden>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWWeersomstandigheden result) async {
              if (result == WhereToGoFromWWWeersomstandigheden.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWWeersomstandigheden.ai_weersomstandigheden) {
                await Navigator.pushNamed(context, 'ai_weersomstandigheden');
              } else if (result ==
                  WhereToGoFromWWWeersomstandigheden.ai_overige_incidenten) {
                await Navigator.pushNamed(context, 'ai_overige_incidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWWeersomstandigheden>>[
              const PopupMenuItem<WhereToGoFromWWWeersomstandigheden>(
                value: WhereToGoFromWWWeersomstandigheden.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWWeersomstandigheden>(
                value:
                    WhereToGoFromWWWeersomstandigheden.ai_weersomstandigheden,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Weersomstandigheden',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWWeersomstandigheden>(
                value: WhereToGoFromWWWeersomstandigheden.ai_overige_incidenten,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Overige Incidenten',
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
                      title: 'Weersomstandigheden',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Na een melding van ijzel- of rijpafzetting geef je dit met plaatsaanduiding door aan de DVL en MKS/BO.\n\nDe TRDL tool is nog volop in ontwikkeling. In de nabije toekomst volgen hier externe links naar ICDOC.',
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
                          'Een laagje ijs aan de bovenleiding vermindert het contact tussen de stroomafnemer en de bovenleiding.',
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
