import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWWisselsMain {
  home_screen,
  ai_wissels_main,
  ai_infra_overig,
  ai_incidenten_main,
}

class WWWisselsMain extends StatelessWidget {
  const WWWisselsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWWisselsMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWWisselsMain result) {
              if (result == WhereToGoFromWWWisselsMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWWisselsMain.ai_wissels_main) {
                Navigator.pushNamed(context, 'ai_wissels_main');
              } else if (result == WhereToGoFromWWWisselsMain.ai_infra_overig) {
                Navigator.pushNamed(context, 'ai_infra_overig');
              } else if (result ==
                  WhereToGoFromWWWisselsMain.ai_incidenten_main) {
                Navigator.pushNamed(context, 'ai_incidenten_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWWisselsMain>>[
              PopupMenuItem<WhereToGoFromWWWisselsMain>(
                value: WhereToGoFromWWWisselsMain.home_screen,
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
              PopupMenuItem<WhereToGoFromWWWisselsMain>(
                value: WhereToGoFromWWWisselsMain.ai_wissels_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Wissels'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWWisselsMain>(
                value: WhereToGoFromWWWisselsMain.ai_infra_overig,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Infra Overig'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWWisselsMain>(
                value: WhereToGoFromWWWisselsMain.ai_incidenten_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Incidenten'),
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
                          destination: 'ww_wissel_eindstand',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Opengereden wissel',
                          destination: 'ww_opengereden_wissel',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Gestoord wissel',
                          destination: 'ww_gestoord_wissel',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Beschadigd wissel',
                          destination: 'ww_beschadigd_wissel',
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
