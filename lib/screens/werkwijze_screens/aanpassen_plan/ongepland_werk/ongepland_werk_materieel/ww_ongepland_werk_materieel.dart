import '/all_imports.dart';

enum WhereToGoFromWWOngeplandWerkMaterieel {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_ongepland_werk_materieel,
}

class WWOngeplandWerkMaterieel extends StatelessWidget {
  const WWOngeplandWerkMaterieel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWOngeplandWerkMaterieel>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWOngeplandWerkMaterieel result) async {
              if (result == WhereToGoFromWWOngeplandWerkMaterieel.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWOngeplandWerkMaterieel
                      .ai_ongepland_werk_materieel) {
                await Navigator.pushNamed(
                  context,
                  'ai_ongepland_werk_materieel',
                );
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWOngeplandWerkMaterieel>>[
              const PopupMenuItem<WhereToGoFromWWOngeplandWerkMaterieel>(
                value: WhereToGoFromWWOngeplandWerkMaterieel.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWOngeplandWerkMaterieel>(
                value: WhereToGoFromWWOngeplandWerkMaterieel
                    .ai_ongepland_werk_materieel,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Ongepland Werk (Materieel)',
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
                      title: 'Materieel (ongepland werk)',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je stelt infracapaciteit ter beschikking voor het ongepland uitvoeren van werkzaamheden en/of de inspectie aan materieel en maakt een tijdsafspraak.',
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
                          'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
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
                          'Door infracapaciteit beschikbaar te stellen, zorg je voor het creëren van een veilige werkplek voor werkzaamheden of inspectie aan materieel.',
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