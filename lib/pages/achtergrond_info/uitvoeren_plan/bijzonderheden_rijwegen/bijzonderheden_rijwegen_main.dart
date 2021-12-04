import 'package:trdl_tool/all_imports.dart';

class BijzonderhedenRijwegenAchtergrond extends StatelessWidget {
  const BijzonderhedenRijwegenAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool'),
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
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(title: 'Bijzonderheden Rijwegen'),
                          ),
                        ],
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
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Ga snel naar',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavButton(
                            buttontext: 'Inzetten railvoertuig (ICB)',
                            destination: 'inzettenrailvoertuigachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Toelaten werktreinen',
                            destination: 'toelatenwerktreinenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Opbouw Plan - basis',
                            destination: 'rijwegenopbouwplanachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Werken Met Plan - basis',
                            destination: 'rijwegenwerkenmetplanachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'ARI - basis',
                            destination: 'rijwegenariachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'TROTS en ABT - basis',
                            destination: 'rijwegentrotsabtachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Rijweg in bedienscherm',
                            destination: 'rijwegenbedienschermachtergrond',
                          ),
                        ],
                      ),
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
                    children: [
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/icbVoertuig.jpg',
                            ),
                          ),
                        ],
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
