import '/all_imports.dart';

enum WhereToGoFromWWIncidentenMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_incidenten_main,
}

class WWIncidentenMain extends StatelessWidget {
  const WWIncidentenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWIncidentenMainNavigation(),
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
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een melding van een incident beoordeel je welke van de volgende maatregelen noodzakelijk zijn om een veilige situatie te creëren en/of uitbreiding te voorkomen:',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 1,
                    boldtext:
                        '- Alarmoproep GSM-R uitzenden;\n\n- Herroepen van seinen;\n\n- ARI uitzetten;\n\n- BuurTRDL informeren;\n\n- Veiligheidsmaatregelen nemen.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Alarmeer of informeer de MKS/BO.\n\nWanneer de AL belt, neemt hij de leiding over van het incident en coördineert de afhandeling met de belanghebbenden ter plaatse. Op verzoek stel je de AL de infracapaciteit ter beschikking.\n\nNadat de AL of de LWB de werkzaamheden als gevolg van het incident gereed meldt, hervat je het treinverkeer, eventueel met inachtneming van de door de AL of LWB genoemde beperking(en).',
                  ),
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
                      NavButton(
                        buttontext: 'Herroepen van een sein',
                        destination: 'ww_herroepen_sein',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Infrastructuur',
                        destination: 'ww_infrastructuur_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Derden en/of Dieren',
                        destination: 'ww_derden_dieren',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Materieel',
                        destination: 'ww_materieel_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Overige Incidenten',
                        destination: 'ww_overige_incidenten_main',
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Utils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                  ),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Utils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een melding van een incident is het van belang om betrokkenen op de hoogte te brengen, het incident te isoleren en uitbreiding te voorkomen.',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WWIncidentenMainNavigation extends StatelessWidget {
  const WWIncidentenMainNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWIncidentenMain>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWIncidentenMain result) async {
        if (result == WhereToGoFromWWIncidentenMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWIncidentenMain.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWIncidentenMain>>[
        const PopupMenuItem<WhereToGoFromWWIncidentenMain>(
          value: WhereToGoFromWWIncidentenMain.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWIncidentenMain>(
          value: WhereToGoFromWWIncidentenMain.ai_incidenten_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
      ],
    );
  }
}