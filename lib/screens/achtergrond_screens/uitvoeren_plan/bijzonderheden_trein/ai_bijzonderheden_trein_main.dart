import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIBijzonderhedenTreinMain {
  home_screen,
  ww_bijzonderheden_trein_main,
}

class AIBijzonderhedenTreinMain extends StatelessWidget {
  const AIBijzonderhedenTreinMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIBijzonderhedenTreinMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIBijzonderhedenTreinMain result) {
              if (result ==
                  WhereToGoFromAIBijzonderhedenTreinMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIBijzonderhedenTreinMain
                      .ww_bijzonderheden_trein_main) {
                Navigator.pushNamed(context, 'ww_bijzonderheden_trein_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIBijzonderhedenTreinMain>>[
              PopupMenuItem<WhereToGoFromAIBijzonderhedenTreinMain>(
                value: WhereToGoFromAIBijzonderhedenTreinMain.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAIBijzonderhedenTreinMain>(
                value: WhereToGoFromAIBijzonderhedenTreinMain
                    .ww_bijzonderheden_trein_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.train,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('WW Bijzonderheden Trein'),
                  ],
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
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
                      title: 'Bijzonderheden trein',
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
                          buttontext: 'Bijzonderheden Trein - Basis',
                          destination: 'ai_bijzonderheden_trein',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Vervoersregeling',
                          destination: 'ai_vervoersregeling',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Onjuiste detectie',
                          destination: 'ai_onjuiste_detectie',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzondere aandacht',
                          destination: 'ai_bijzondere_aandacht',
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
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/deKameel.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
