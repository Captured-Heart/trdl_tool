import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWOngeplandWerkMaterieel {
  home_screen,
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
          title: 'Materieel (ongepland werk)',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWOngeplandWerkMaterieel>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWOngeplandWerkMaterieel result) {
              if (result == WhereToGoFromWWOngeplandWerkMaterieel.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWOngeplandWerkMaterieel
                      .ai_ongepland_werk_materieel) {
                Navigator.pushNamed(context, 'ai_ongepland_werk_materieel');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWOngeplandWerkMaterieel>>[
              PopupMenuItem<WhereToGoFromWWOngeplandWerkMaterieel>(
                value: WhereToGoFromWWOngeplandWerkMaterieel.home_screen,
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
              PopupMenuItem<WhereToGoFromWWOngeplandWerkMaterieel>(
                value: WhereToGoFromWWOngeplandWerkMaterieel
                    .ai_ongepland_werk_materieel,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Ongepland Werk Materieel'),
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
