import 'package:trdl_tool/all_imports.dart';

class GeplandeWerkzaamhedenAchtergrond extends StatelessWidget {
  const GeplandeWerkzaamhedenAchtergrond({Key? key}) : super(key: key);

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
                        title: 'Geplande Werkzaamheden',
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
                            destination: 'geplandewerkzaamhedenbasisachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Controleren WBI',
                            destination: 'controlerenwbiachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Fouten in de WBI',
                            destination: 'foutenindewbiachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Aanvang werkzaamheden',
                            destination: 'aanvangwerkzaamhedenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Toelaten werktreinen',
                            destination: 'toelatenwerktreinenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Werkzones',
                            destination: 'werkzonesachtergrond',
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
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzaamhedenBovenleiding.jpg',
                      ),
                      SizedBoxH(),
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
