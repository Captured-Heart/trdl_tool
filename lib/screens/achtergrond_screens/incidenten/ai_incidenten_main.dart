import '/all_imports.dart';

enum WhereToGoFromAIIncidentenMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_incidenten_main,
  // ignore: constant_identifier_names
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
          title: Utils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIIncidentenMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <Widget>[
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
              TextCard(
                widgetList: <Widget>[
                  const TitleText(
                    title: 'Ga snel naar',
                  ),
                  const SizedBoxH(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Incidenten - basisinformatie',
                        destination: 'ai_incidenten_basis',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Infra',
                        destination: 'ai_infrastructuur_main',
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
            ],
          ),
        ),
      ),
    );
  }
}

class AIIncidentenMainNavigation extends StatelessWidget {
  const AIIncidentenMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIIncidentenMain>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromAIIncidentenMain result) async {
        if (result == WhereToGoFromAIIncidentenMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromAIIncidentenMain.ww_incidenten_main) {
          await Navigator.pushNamed(context, 'ww_incidenten_main');
        } else if (result ==
            WhereToGoFromAIIncidentenMain.ai_inzetten_railvoertuig) {
          await Navigator.pushNamed(context, 'ai_inzetten_railvoertuig');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromAIIncidentenMain>>[
        const PopupMenuItem<WhereToGoFromAIIncidentenMain>(
          value: WhereToGoFromAIIncidentenMain.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIIncidentenMain>(
          value: WhereToGoFromAIIncidentenMain.ww_incidenten_main,
          child: MenuItemContent(
            icon: Utils.iconWW,
            text: 'WW Incidenten',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIIncidentenMain>(
          value: WhereToGoFromAIIncidentenMain.ai_inzetten_railvoertuig,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Inzetten ICB',
          ),
        ),
      ],
    );
  }
}
