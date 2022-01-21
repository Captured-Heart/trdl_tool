import 'package:trdl_tool/core/all_imports.dart';

class BijzonderhedenRijwegen extends StatelessWidget {
  const BijzonderhedenRijwegen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Bijzonderheden Rijwegen',
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
                        title: 'Bijzonderheden Rijwegen',
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
                            buttontext: 'Sporen buiten exploitatie',
                            destination: 'rijwegenexploitatie',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Kop van trein voorbij sein',
                            destination: 'kopvantrein',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Inzetten railvoertuig ICB',
                            destination: 'inzettenicb',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Toelaten werktreinen',
                            destination: 'toelatenwerktreinen',
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
