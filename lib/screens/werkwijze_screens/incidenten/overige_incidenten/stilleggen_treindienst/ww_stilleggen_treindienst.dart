import '/all_imports.dart';

enum WhereToGoFromWWStilleggenTreindienst {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_stilleggen_treindienst,
  // ignore: constant_identifier_names
  ai_overige_incidenten,
}

class WWStilleggenTreindienst extends StatelessWidget {
  const WWStilleggenTreindienst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWStilleggenTreindienstNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Stilleggen treindienst',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Wanneer je de opdracht 'stilleggen treindienst' krijgt, handel je als volgt:",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Informeer MCN via algemene oproep dat de procedure 'stilleggen treindienst' wordt opgestart;\n\n- Laat reizigerstreinen stoppen langs het eerstvolgende perron, indien nodig laat je de trein afrangeren;\n\n- Laat goederentreinen bij voorkeur doorrijden tot het eerstvolgende stoptonende sein.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Algemene oproeptekst alarmering MCN:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "'- Dit bericht is bestemd voor alle machinisten. Om veiligheidsredenen wordt nu de procedure 'stilleggen treindienst' gestart. Machinisten van reizigerstreinen wordt dringend verzocht de trein langs het eerstvolgende perron tot stilstand te brengen en de trein te ontruimen. Machinisten van goederentreinen kunnen doorrijden tot het eerstvolgende stoptonende sein. Indien aanvullende opdrachten nodig zijn, wordt u hierover zo spoedig mogelijk geïnformeerd -'",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Treinen komen niet tijdig tot stilstand voor een gevaarpunt.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "De procedure 'stilleggen treindienst' wordt geïnitieerd door de OvD-S wanneer er sprake is van een acuut dreigende situatie voor het treinverkeer. Het doel is om binnen 30 minuten beheerst alle treinen stil te laten staan en alle reizigerstreinen en stationshallen beheerst te ontruimen.",
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

class WWStilleggenTreindienstNavigation extends StatelessWidget {
  const WWStilleggenTreindienstNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWStilleggenTreindienst>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWStilleggenTreindienst result) async {
        if (result == WhereToGoFromWWStilleggenTreindienst.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWStilleggenTreindienst.ai_stilleggen_treindienst) {
          await Navigator.pushNamed(context, 'ai_stilleggen_treindienst');
        } else if (result ==
            WhereToGoFromWWStilleggenTreindienst.ai_overige_incidenten) {
          await Navigator.pushNamed(context, 'ai_overige_incidenten');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWStilleggenTreindienst>>[
        const PopupMenuItem<WhereToGoFromWWStilleggenTreindienst>(
          value: WhereToGoFromWWStilleggenTreindienst.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWStilleggenTreindienst>(
          value: WhereToGoFromWWStilleggenTreindienst.ai_stilleggen_treindienst,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Stilleggen Treindienst',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWStilleggenTreindienst>(
          value: WhereToGoFromWWStilleggenTreindienst.ai_overige_incidenten,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Overige Incidenten',
          ),
        ),
      ],
    );
  }
}