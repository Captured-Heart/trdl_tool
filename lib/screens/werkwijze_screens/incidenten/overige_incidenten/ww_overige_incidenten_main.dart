import 'package:trdl_tool/all_imports.dart';

class WWOverigeIncidentenMain extends StatelessWidget {
  const WWOverigeIncidentenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Overige incidenten',
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
                        title: 'Overige Incidenten',
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
                            buttontext: 'Gestrande Trein',
                            destination: 'ww_gestrande_trein',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Brand',
                            destination: 'ww_brand',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Weersomstandigheden',
                            destination: 'ww_weersomstandigheden',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Ontruimen Post',
                            destination: 'ww_ontruimen_post',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Stroomstoring',
                            destination: 'ww_stroomstoring',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Wissels vrijmaken',
                            destination: 'ww_wissels_vrijmaken',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'STS passage',
                            destination: 'ww_sts_passage',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Stilleggen treindienst',
                            destination: 'ww_stilleggen_treindienst',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Afhandelen systeemstoringen',
                            destination: 'ww_afhandelen_systeemstoringen',
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
