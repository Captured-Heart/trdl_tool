import 'package:trdl_tool/core/all_imports.dart';

class Wissels extends StatelessWidget {
  const Wissels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Wissels',
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
                        title: 'Wissels',
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
                            buttontext: 'Wissel niet in eindstand',
                            destination: 'wisseleindstand',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Opengereden wissel',
                            destination: 'opengeredenwissel',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Gestoord wissel',
                            destination: 'gestoordwissel',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Beschadigd wissel',
                            destination: 'beschadigdwissel',
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
