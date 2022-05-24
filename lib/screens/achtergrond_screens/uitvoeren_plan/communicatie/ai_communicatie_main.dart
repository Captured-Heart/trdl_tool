import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAICommunicatieMain {
  home_screen,
  ww_mondelinge_communicatie,
  ai_mondelinge_communicatie,
  ai_communicatiemiddelen,
  ai_communicatiesysteem,
}

class AICommunicatieMain extends StatelessWidget {
  const AICommunicatieMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAICommunicatieMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAICommunicatieMain result) {
              if (result == WhereToGoFromAICommunicatieMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAICommunicatieMain.ww_mondelinge_communicatie) {
                Navigator.pushNamed(context, 'ww_mondelinge_communicatie');
              } else if (result ==
                  WhereToGoFromAICommunicatieMain.ai_mondelinge_communicatie) {
                Navigator.pushNamed(context, 'ai_mondelinge_communicatie');
              } else if (result ==
                  WhereToGoFromAICommunicatieMain.ai_communicatiemiddelen) {
                Navigator.pushNamed(context, 'ai_communicatiemiddelen');
              } else if (result ==
                  WhereToGoFromAICommunicatieMain.ai_communicatiesysteem) {
                Navigator.pushNamed(context, 'ai_communicatiesysteem');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAICommunicatieMain>>[
              PopupMenuItem<WhereToGoFromAICommunicatieMain>(
                value: WhereToGoFromAICommunicatieMain.home_screen,
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
              PopupMenuItem<WhereToGoFromAICommunicatieMain>(
                value:
                    WhereToGoFromAICommunicatieMain.ww_mondelinge_communicatie,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.train,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('WW Mondelinge Communicatie'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAICommunicatieMain>(
                value:
                    WhereToGoFromAICommunicatieMain.ai_mondelinge_communicatie,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Mondelinge Communicatie'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAICommunicatieMain>(
                value: WhereToGoFromAICommunicatieMain.ai_communicatiemiddelen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Communicatiemiddelen'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAICommunicatieMain>(
                value: WhereToGoFromAICommunicatieMain.ai_communicatiesysteem,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Communicatiesysteem'),
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
            /*TITLE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    TitleText(
                      title: 'Communicatie',
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
                          buttontext: 'Communicatie - Werkwijze',
                          destination: 'ww_communicatie_main',
                        ),
                        SizedBoxH(),
                        //TODO: Hier verder met enum en navigatie:
                        NavButton(
                          buttontext: 'Mondelinge (veiligheids)communicatie',
                          destination: 'ai_mondelinge_communicatie',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Communicatiemiddelen - Basis',
                          destination: 'ai_communicatiemiddelen',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Communicatiesysteem GSM-R - Basis',
                          destination: 'ai_communicatiesysteem',
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
                          'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_main.jpg',
                    ),
                    SizedBoxH(),
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
