import 'package:trdl_tool/all_imports.dart';

class BijzonderhedenTreinAchtergrond extends StatelessWidget {
  const BijzonderhedenTreinAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'TRDLtool',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Bijzonderheden Trein',
                      ),
                    ],
                  ),
                ),
              ),
              /*NAVIGATION CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                            destination: 'bijzonderhedentreinbasisachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Vervoersregeling',
                            destination: 'vervoersregelingachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Onjuiste detectie',
                            destination: 'onjuistedetectieachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Bijzondere aandacht',
                            destination: 'bijzondereaandachtachtergrond',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/deKameel.jpg',
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
