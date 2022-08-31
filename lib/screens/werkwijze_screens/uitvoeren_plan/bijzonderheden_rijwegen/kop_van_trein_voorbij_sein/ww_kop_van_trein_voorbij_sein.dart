import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWKopVanTreinVoorbijSein { home_screen }

class WWKopVanTreinVoorbijSein extends StatelessWidget {
  const WWKopVanTreinVoorbijSein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWKopVanTreinVoorbijSein>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWKopVanTreinVoorbijSein result) {
              if (result == WhereToGoFromWWKopVanTreinVoorbijSein.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWKopVanTreinVoorbijSein>>[
              PopupMenuItem<WhereToGoFromWWKopVanTreinVoorbijSein>(
                value: WhereToGoFromWWKopVanTreinVoorbijSein.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    const Text('Home'),
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
                      title: 'Kop van de trein/rangeerdeel voorbij het sein',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je stelt een rijweg in en deelt de MCN mee dat het sein uit de stand stop is gebracht, of je neemt veiligheidsmaatregelen en geeft de MCN opdracht om te gaan rijden.',
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
                          'Treinen komen niet tijdig tot stilstand voor een gevaarpunt.',
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
                          'Wanneer de kop van de trein of rangeerdeel bij vertrek voorbij het sein staat, kan de MCN niet waarnemen of het sein veilig staat voor vertrek en kan het vertrekproces niet gestart worden.',
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
