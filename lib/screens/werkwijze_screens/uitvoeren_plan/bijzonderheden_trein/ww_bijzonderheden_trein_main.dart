import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWBijzonderhedenTreinMain {
  home_screen,
  ai_bijzonderheden_trein_main,
}

class WWBijzonderhedenTreinMain extends StatelessWidget {
  const WWBijzonderhedenTreinMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWBijzonderhedenTreinMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWBijzonderhedenTreinMain result) {
              if (result ==
                  WhereToGoFromWWBijzonderhedenTreinMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWBijzonderhedenTreinMain
                      .ai_bijzonderheden_trein_main) {
                Navigator.pushNamed(context, 'ai_bijzonderheden_trein_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWBijzonderhedenTreinMain>>[
              PopupMenuItem<WhereToGoFromWWBijzonderhedenTreinMain>(
                value: WhereToGoFromWWBijzonderhedenTreinMain.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWBijzonderhedenTreinMain>(
                value: WhereToGoFromWWBijzonderhedenTreinMain
                    .ai_bijzonderheden_trein_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    const Text('AI Bijzonderheden Trein'),
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
                      title: 'Bijzonderheden Trein',
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
                          buttontext: 'Treinen met Vervoersregeling',
                          destination: 'ww_vervoersregeling',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Voertuigen zonder Detectie',
                          destination: 'ww_onjuiste_detectie',
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
    );
  }
}
