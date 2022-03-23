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
                          NavButton(buttontext: 'Incidenten - werkwijze', destination: 'ww_incidenten_main',),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Incidenten - basisinformatie',
                            destination: 'ai_incidenten',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Infra',
                            destination: 'ai_incidenten_infra_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            //TODO: Add page
                            buttontext: 'Materieel',
                            destination: 'materieelincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            //TODO: Add page
                            buttontext: 'Mensen, dieren en voorwerpen',
                            destination:
                                'mensendierenvoorwerpenincidentenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            //TODO: Add page
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