import '/all_imports.dart';

class HomeIndex0 extends StatelessWidget {
  const HomeIndex0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Card>[
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const <Widget>[
                      TitleText(
                        title: 'Verantwoordelijkheden Treindienstleider',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als treindienstleider ben je verantwoordelijk voor het verdelen van de infracapaciteit in een aan jou toegewezen geografisch gebied. Dit doe je door het uitvoeren van een vooraf aangeleverd plan.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Wanneer er zich situaties voordoen die een aanpassing op dat plan noodzakelijk maken, doe je dit door gebruik te maken van vooraf bepaalde procedures in deze werkwijze.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            "Op momenten dat oplossingen ter plekke moeten worden bedacht, kan besloten worden een procedure niet geheel of anders uit te voeren. Het is het vakmanschap van de treindienstleider om te bepalen welke VKA's nodig zijn om de risico's te beheersen.",
                      ),
                    ],
                  ),
                ),
              ),
              //NAVIGATION CARD
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: <Widget>[
                      const TitleText(
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const <Widget>[
                            NavButton(
                              buttontext: 'Uitvoeren',
                              destination: 'ww_uitvoeren_plan_main',
                            ),
                            SizedBoxW(),
                            NavButton(
                              buttontext: 'Aanpassen',
                              destination: 'ww_aanpassenplan_main',
                            ),
                            SizedBoxW(),
                            NavButton(
                              buttontext: 'Incidenten',
                              destination: 'ww_incidenten_main',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}