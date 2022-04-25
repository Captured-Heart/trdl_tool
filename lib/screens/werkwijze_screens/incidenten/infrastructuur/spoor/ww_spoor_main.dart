import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWSpoorMain {
  home_screen,
  ai_incidenten_infra_main,
  ai_incidenten_spoor,
}

class WWSpoorMain extends StatelessWidget {
  const WWSpoorMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWSpoorMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWSpoorMain result) {
              if (result == WhereToGoFromWWSpoorMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWSpoorMain.ai_incidenten_infra_main) {
                Navigator.pushNamed(context, 'ai_incidenten_infra_main');
              } else if (result ==
                  WhereToGoFromWWSpoorMain.ai_incidenten_spoor) {
                Navigator.pushNamed(context, 'ai_incidenten_spoor');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWSpoorMain>>[
              PopupMenuItem<WhereToGoFromWWSpoorMain>(
                value: WhereToGoFromWWSpoorMain.home_screen,
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
              PopupMenuItem<WhereToGoFromWWSpoorMain>(
                value: WhereToGoFromWWSpoorMain.ai_incidenten_infra_main,
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
              PopupMenuItem<WhereToGoFromWWSpoorMain>(
                value: WhereToGoFromWWSpoorMain.ai_incidenten_spoor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Spoor'),
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
                        title: 'Spoor',
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
                            buttontext: 'Glad spoor',
                            destination: 'ww_glad_spoor',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Onregelmatigheden baan',
                            destination: 'ww_onregelmatigheden_baan',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Roestvorming',
                            destination: 'ww_roestvorming',
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
