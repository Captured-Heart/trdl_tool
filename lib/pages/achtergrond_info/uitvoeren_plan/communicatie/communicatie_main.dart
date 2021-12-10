import 'package:trdl_tool/all_imports.dart';

class CommunicatieAchtergrond extends StatelessWidget {
  const CommunicatieAchtergrond({Key? key}) : super(key: key);

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
              /*TITLE CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Communicatie',
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
                            buttontext: 'Communicatie - Werkwijze',
                            destination: 'mondelingecommunicatie',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Mondelinge (veiligheids)communicatie',
                            destination: 'mondelingeveiligheidscommunicatie',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Communicatiemiddelen - Basis',
                            destination: 'communicatiemiddelenbasis',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Communicatiesysteem GSM-R - Basis',
                            destination: 'communicatiesysteembasis',
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
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_main.jpg',
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
