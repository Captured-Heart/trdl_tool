import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWGevaarlijkeStoffen1 {
  home_screen,
  ai_ruclu,
  ai_gevaarlijkestoffen,
}

class WWGevaarlijkeStoffen1 extends StatelessWidget {
  const WWGevaarlijkeStoffen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWGevaarlijkeStoffen1>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWGevaarlijkeStoffen1 result) {
              if (result == WhereToGoFromWWGevaarlijkeStoffen1.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWGevaarlijkeStoffen1.ai_ruclu) {
                Navigator.pushNamed(context, 'ai_ruclu');
              } else if (result ==
                  WhereToGoFromWWGevaarlijkeStoffen1.ai_gevaarlijkestoffen) {
                Navigator.pushNamed(context, 'ai_gevaarlijkestoffen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWGevaarlijkeStoffen1>>[
              PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen1>(
                value: WhereToGoFromWWGevaarlijkeStoffen1.home_screen,
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
              PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen1>(
                value: WhereToGoFromWWGevaarlijkeStoffen1.ai_ruclu,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('RU/CLU'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWGevaarlijkeStoffen1>(
                value: WhereToGoFromWWGevaarlijkeStoffen1.ai_gevaarlijkestoffen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Gevaarlijke Stoffen'),
                  ],
                ),
              ),
            ],
          ),
          const HomeButton(),
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
                        title: 'Gevaarlijke stoffen en milieu',
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
                            buttontext: 'Gevaarlijke stoffen',
                            destination: 'ww_gevaarlijke_stoffen2',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Meldingen omtrent milieu',
                            destination: 'ww_milieumeldingen',
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
