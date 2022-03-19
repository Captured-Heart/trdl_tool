import 'package:trdl_tool/core/all_imports.dart';

class AIIncidentenMain extends StatelessWidget {
  const AIIncidentenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Incidenten',
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
                        title: 'Incidenten',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/aanpassen_plan/incidenten/incidenten_main.png',
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
                            buttontext: 'Incidenten - basisinformatie',
                            destination: 'incidentenachtergrondbasis',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Infra',
                            destination: 'infraincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Materieel',
                            destination: 'materieelincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Mensen, dieren en voorwerpen',
                            destination:
                                'mensendierenvoorwerpenincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Overige incidenten',
                            destination: 'overigeincidentenachtergrond',
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