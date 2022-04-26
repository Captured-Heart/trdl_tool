import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWKunstwerkenMain {
  home_screen,
  ai_kunstwerken,
  ai_incidenten_infra_main
}

class WWKunstwerkenMain extends StatelessWidget {
  const WWKunstwerkenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWKunstwerkenMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWKunstwerkenMain result) {
              if (result == WhereToGoFromWWKunstwerkenMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWKunstwerkenMain.ai_kunstwerken) {
                Navigator.pushNamed(context, 'ai_kunstwerken');
              } else if (result ==
                  WhereToGoFromWWKunstwerkenMain.ai_incidenten_infra_main) {
                Navigator.pushNamed(context, 'ai_incidenten_infra_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWKunstwerkenMain>>[
              PopupMenuItem<WhereToGoFromWWKunstwerkenMain>(
                value: WhereToGoFromWWKunstwerkenMain.home_screen,
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
              PopupMenuItem<WhereToGoFromWWKunstwerkenMain>(
                value: WhereToGoFromWWKunstwerkenMain.ai_kunstwerken,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Kunstwerken'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWKunstwerkenMain>(
                value: WhereToGoFromWWKunstwerkenMain.ai_incidenten_infra_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Infra'),
                  ],
                ),
              ),
            ],
          ),
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
                        title: 'Kunstwerken',
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
                            buttontext: 'Aanrijding viaduct',
                            destination: 'ww_aanrijding_viaduct',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Storing brug',
                            destination: 'ww_storing_brug',
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
