import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIIncidentenMain {
  home_screen,
  ai_inzetten_railvoertuig,
}

class AIIncidentenMain extends StatelessWidget {
  const AIIncidentenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIIncidentenMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIIncidentenMain result) {
              if (result == WhereToGoFromAIIncidentenMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIIncidentenMain.ai_inzetten_railvoertuig) {
                Navigator.pushNamed(context, 'ai_inzetten_railvoertuig');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIIncidentenMain>>[
              PopupMenuItem<WhereToGoFromAIIncidentenMain>(
                value: WhereToGoFromAIIncidentenMain.home_screen,
                child: MenuItemContent(icon: Icons.home, text: 'Home',),
              ),
              PopupMenuItem<WhereToGoFromAIIncidentenMain>(
                value: WhereToGoFromAIIncidentenMain.ai_inzetten_railvoertuig,
                child: MenuItemContent(icon: Icons.menu_book, text: 'AI Inzetten Railvoertuig',),
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
                      title: 'Incidenten',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/aanpassen_plan/incidenten/incidenten_main.png',
                    ),
                    SizedBoxH(),
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
                          buttontext: 'Incidenten - werkwijze',
                          destination: 'ww_incidenten_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Incidenten - basisinformatie',
                          destination: 'ai_incidenten_basis',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Infra',
                          destination: 'ai_infra_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Materieel',
                          destination: 'ai_materieel_main',
                        ),
                        //TOEVOEGEN MATERIEEL!!!
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Mensen, dieren en voorwerpen',
                          destination: 'ai_incidenten_mensendierenvoorwerpen',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Overige incidenten',
                          destination: 'ai_incidenten_overige_main',
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
