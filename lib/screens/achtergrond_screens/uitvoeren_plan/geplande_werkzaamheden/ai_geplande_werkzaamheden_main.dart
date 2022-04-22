import 'package:trdl_tool/all_imports.dart';

class AIGeplandeWerkzaamhedenMain extends StatelessWidget {
  const AIGeplandeWerkzaamhedenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
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
                        title: 'Geplande Werkzaamheden',
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
                            destination: 'ai_geplande_werkzaamheden',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Controleren WBI',
                            destination: 'ai_controleren_wbi',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Fouten in de WBI',
                            destination: 'ai_fouten_wbi',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Aanvang werkzaamheden',
                            destination: 'ai_aanvang_werkzaamheden',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Toelaten werktreinen',
                            destination: 'ai_toelaten_werktreinen',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Werkzones',
                            destination: 'ai_werkzones',
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
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzaamhedenBovenleiding.jpg',
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
