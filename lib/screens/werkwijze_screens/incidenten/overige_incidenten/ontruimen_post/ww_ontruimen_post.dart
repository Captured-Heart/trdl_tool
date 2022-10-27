import '/all_imports.dart';

enum WhereToGoFromWWOntruimenPost {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_ontruimen_post,
  // ignore: constant_identifier_names
  ai_stilleggen_treindienst,
  // ignore: constant_identifier_names
  ai_overige_incidenten,
}

class WWOntruimenPost extends StatelessWidget {
  const WWOntruimenPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWOntruimenPostNavigation(),
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
                    title: 'Ontruimen post',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Zorg voor je persoonlijke veiligheid en neem een mobiele noodtelefoon mee.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '* Acuut ontruimen',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'Je verlaat de post en plaatst een alarmoproep met de mobiele noodtelefoon.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '* Beheerst ontruimen',
                  ),
                  BodyText(
                    indents: 1,
                    text: 'Informeer MCN via de algemene oproep:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 2,
                    text:
                        "- '- Dit bericht is bestemd voor alle machinisten. In verband met een calamiteit op de verkeersleidingspost . . . (naam post) zal iedereen deze post op korte termijn verlaten.\n\nMachinisten van reizigerstreinen moeten de reizigers op het eerstvolgende perron of anders een andere veilige plaats evacueren. Probeer het langdurig dicht liggen van overwegen te voorkomen. Indien aanvullende opdrachten nodig zijn wordt u hierover zo spoedig mogelijk geïnformeerd. Einde bericht. -'",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Strings.risico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Strings.context,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Zie het ontruimingsplan van de post.',
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

class WWOntruimenPostNavigation extends StatelessWidget {
  const WWOntruimenPostNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWOntruimenPost>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWOntruimenPost result) async {
        if (result == WhereToGoFromWWOntruimenPost.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWOntruimenPost.ai_ontruimen_post) {
          await Navigator.pushNamed(context, 'ai_ontruimen_post');
        } else if (result ==
            WhereToGoFromWWOntruimenPost.ai_stilleggen_treindienst) {
          await Navigator.pushNamed(context, 'ai_stilleggen_treindienst');
        } else if (result ==
            WhereToGoFromWWOntruimenPost.ai_overige_incidenten) {
          await Navigator.pushNamed(context, 'ai_overige_incidenten');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWOntruimenPost>>[
        const PopupMenuItem<WhereToGoFromWWOntruimenPost>(
          value: WhereToGoFromWWOntruimenPost.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWOntruimenPost>(
          value: WhereToGoFromWWOntruimenPost.ai_ontruimen_post,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Ontruimen Post',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWOntruimenPost>(
          value: WhereToGoFromWWOntruimenPost.ai_stilleggen_treindienst,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Stilleggen Treindienst',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWOntruimenPost>(
          value: WhereToGoFromWWOntruimenPost.ai_overige_incidenten,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Overige Incidenten',
          ),
        ),
      ],
    );
  }
}
