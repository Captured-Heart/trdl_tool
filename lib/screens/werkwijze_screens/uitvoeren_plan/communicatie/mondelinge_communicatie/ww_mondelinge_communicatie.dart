import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWMondelingeCommunicatie {
  home,
  ai_mondelinge_veiligheidscommunicatie
}

class WWMondelingeCommunicatie extends StatelessWidget {
  const WWMondelingeCommunicatie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWMondelingeCommunicatie>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWMondelingeCommunicatie result) {
              if (result == WhereToGoFromWWMondelingeCommunicatie.home) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWMondelingeCommunicatie
                      .ai_mondelinge_veiligheidscommunicatie) {
                Navigator.pushNamed(
                    context, 'ai_mondelinge_veiligheidscommunicatie');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWMondelingeCommunicatie>>[
              const PopupMenuItem<WhereToGoFromWWMondelingeCommunicatie>(
                value: WhereToGoFromWWMondelingeCommunicatie.home,
                child: Text('Home'),
              ),
              const PopupMenuItem<WhereToGoFromWWMondelingeCommunicatie>(
                value: WhereToGoFromWWMondelingeCommunicatie
                    .ai_mondelinge_veiligheidscommunicatie,
                child: Text('AI Mondelinge Veiligheidscommunicatie'),
              ),
            ],
          ),
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
                      title: 'Mondelinge Communicatie',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Bij aanvang van ieder bericht geldt identificatieplicht;\n\n- Gebruik bij het voeren van een gesprek de dienstuitdrukkingen en de berichtenstructuur;\n\n- Houd je aan de gespreksdiscipline.',
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
                          'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt of treinen komen onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
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
                          'Om onveilige situaties te voorkomen zijn met de gesprekspartners van de TRDL uniforme uitgangspunten afgesproken voor het wisselen van mondelinge berichten. De TRDL heeft in deze afspraken een sturende rol.',
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
