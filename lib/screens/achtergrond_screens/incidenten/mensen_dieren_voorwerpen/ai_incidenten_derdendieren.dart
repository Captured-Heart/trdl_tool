import 'package:trdl_tool/all_imports.dart';

class AIIncidentenDerdenDieren extends StatelessWidget {
  const AIIncidentenDerdenDieren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Derden en/of Dieren',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        title: 'Derden en/of dieren langs de baan',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Het treinverkeer heeft in toenemende mate last van mensen die onbevoegd langs het spoor lopen. \'Spoorlopers\' zorgen elke dag weer voor ruim drie uur treinvertraging. Het is bovendien levensgevaarlijk. Veel mensen realiseren zich niet hoe gevaarlijk hun gedrag is en hoeveel overlast ze MCN en treinreizigers bezorgen als ze \'alleen maar de hond uitlaten\'.',
                      ),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/incidenten/mensen_dieren_voorwerpen.png',
                      ),
                      SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*NAVIGATION CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: [
                      const TitleText(
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavButton(
                            buttontext: 'Derden en/of dieren - Werkwijze',
                            destination: 'ww_derden_dieren',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Incidenten - Achtergrond',
                            destination: 'ai_incidenten_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Mensen, dieren en voorwerpen',
                            destination:
                                'wisselnietineindstandincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Gestoord wissel',
                            destination: 'gestoordwisselincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Opengereden wissel',
                            destination:
                                'opengeredenwisselincidentenachtergrond',
                          ),
                        ],
                      ),
                      const SizedBoxH(),
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
