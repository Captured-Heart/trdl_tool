import '/all_imports.dart';

enum WhereToGoFromWWStappenplanVersperringen {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_stappenplan_versperringen,
}

class WWStappenplanVersperringen extends StatelessWidget {
  const WWStappenplanVersperringen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWStappenplanVersperringen>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWStappenplanVersperringen result) async {
              if (result ==
                  WhereToGoFromWWStappenplanVersperringen.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWStappenplanVersperringen
                      .ai_stappenplan_versperringen) {
                await Navigator.pushNamed(
                  context,
                  'ai_stappenplan_versperringen',
                );
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWStappenplanVersperringen>>[
              const PopupMenuItem<WhereToGoFromWWStappenplanVersperringen>(
                value: WhereToGoFromWWStappenplanVersperringen.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWStappenplanVersperringen>(
                value: WhereToGoFromWWStappenplanVersperringen
                    .ai_stappenplan_versperringen,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Stappenplan Versperringen',
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
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(title: 'Stappenplan Versperringen'),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bepaal samen met de DVL de (infra)beperkingen en (-)mogelijkheden en neem samen met de DVL het verdelingsbesluit. Op verzoek van de DVL toets je de versperringsmaatregel en geef je hierbij aan of en vanaf wanneer de versperringsmaatregel uitvoerbaar is.',
                    ),
                  ],
                ),
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.risico,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: 'Foutief getoetste planaanpassing.',
                    ),
                  ],
                ),
              ),
            ),
            /*CONTEXT CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wanneer er onvoldoende infra beschikbaar is om volgens plan te kunnen rijden, dient de wel beschikbare infra herverdeeld te worden. In overleg met de vervoerders wordt vastgesteld welke aanpassingen op het plan maakbaar en uitvoerbaar zijn.',
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