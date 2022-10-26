import '/all_imports.dart';

enum WhereToGoFromWWSchakelenBovenleiding {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_schakelen_bovenleiding,
}

class WWSchakelenBovenleiding extends StatelessWidget {
  const WWSchakelenBovenleiding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWSchakelenBovenleiding>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWSchakelenBovenleiding result) async {
              if (result == WhereToGoFromWWSchakelenBovenleiding.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWSchakelenBovenleiding
                      .ai_schakelen_bovenleiding) {
                await Navigator.pushNamed(context, 'ai_schakelen_bovenleiding');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWSchakelenBovenleiding>>[
              const PopupMenuItem<WhereToGoFromWWSchakelenBovenleiding>(
                value: WhereToGoFromWWSchakelenBovenleiding.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWSchakelenBovenleiding>(
                value: WhereToGoFromWWSchakelenBovenleiding
                    .ai_schakelen_bovenleiding,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Schakelen Bovenleiding',
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
                    TitleText(
                      title: 'Schakelen bovenleiding',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Het OBI meldt welke groepen geschakeld zijn/gaan worden. Je maakt een WECO op.',
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
                      text:
                          'Trein komt op voor werkzaamheden beschikbaar gesteld spoor.',
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
                          'De bedieningsdeskundige van het OBI is installatieverantwoordelijke voor de bovenleiding. Wanneer de bovenleiding ongepland geschakeld wordt heeft dit gevolgen voor het kunnen rijden met elektrische tractie. De treinen in het betrokken gebied moeten de stroomafnemers laten zakken, omdat er problemen kunnen ontstaan wanneer het OBI de groepen weer onder spanning brengt.',
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