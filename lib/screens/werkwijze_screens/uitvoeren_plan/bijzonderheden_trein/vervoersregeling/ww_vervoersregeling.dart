import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWVervoersregeling { home_screen, ai_vervoersregeling }

class WWVervoersregeling extends StatelessWidget {
  const WWVervoersregeling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWVervoersregeling>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWVervoersregeling result) {
              if (result == WhereToGoFromWWVervoersregeling.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWVervoersregeling.ai_vervoersregeling) {
                Navigator.pushNamed(context, 'ai_vervoersregeling');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWVervoersregeling>>[
              PopupMenuItem<WhereToGoFromWWVervoersregeling>(
                value: WhereToGoFromWWVervoersregeling.home_screen,
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
              PopupMenuItem<WhereToGoFromWWVervoersregeling>(
                value: WhereToGoFromWWVervoersregeling.ai_vervoersregeling,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu_book,
                        color: flexSchemeLight.primary,
                      ),
                      const Text('AI Treinen met Vervoersregeling'),
                    ],
                  ),
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
                      title: 'Treinen met een Vervoersregeling',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je volgt voor zowel een BP trein als een BV trein de beperkingen op zoals die in de regeling zijn aangegeven.',
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
                          'Conflicterend spoorgebruik, voor treinen met beperkende voorwaarden.',
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
                          'Voor vervoer waarbij afmetingen, gewicht, aard van de lading of het materieeltype maatregelen vergen, wordt een vervoersregeling gemaakt. De betrokken trein wordt dan of een BV trein of een BP trein. Voor een BP trein gelden de standaard voorwaarden BP 1-2-3.',
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
