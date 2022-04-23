import 'package:trdl_tool/all_imports.dart';

//TODO: Hier verder de appbar aanpassen aan de nieuwe navigatiestructuur!

class WWBeveiligingMain extends StatelessWidget {
  const WWBeveiligingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Beveiliging',
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
                        title: 'Beveiliging',
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
                            buttontext: 'Tegen de rijrichting',
                            destination: 'ww_tegen_rijrichting',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Veiligheidsstoring sein',
                            destination: 'ww_veiligheidsstoring_sein',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Reset assenteller AzLM',
                            destination: 'ww_reset_assenteller',
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
