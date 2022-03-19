import 'package:trdl_tool/core/all_imports.dart';

class AIBijzonderhedenTreinMain extends StatelessWidget {
  const AIBijzonderhedenTreinMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Bijzonderheden trein',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //*PROCEDURE CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Bijzonderheden trein',
                      ),
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
                            buttontext: 'Basisinformatie',
                            destination: 'ai_bijzonderheden_trein',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Vervoersregeling',
                            destination: 'ai_vervoersregeling',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Onjuiste detectie',
                            destination: 'ai_juiste_detectie',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Bijzondere aandacht',
                            destination: 'ai_bijzondere_aandacht',
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*IMAGE CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/deKameel.jpg',
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