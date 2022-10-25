import '/all_imports.dart';

enum WhereToGoFromWWStsPassage {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_sts_passage,
  // ignore: constant_identifier_names
  ai_overige_incidenten,
}

class WWStsPassage extends StatelessWidget {
  const WWStsPassage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWStsPassage>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWStsPassage result) async {
              if (result == WhereToGoFromWWStsPassage.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWStsPassage.ai_sts_passage) {
                await Navigator.pushNamed(context, 'ai_sts_passage');
              } else if (result ==
                  WhereToGoFromWWStsPassage.ai_overige_incidenten) {
                await Navigator.pushNamed(context, 'ai_overige_incidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWStsPassage>>[
              const PopupMenuItem<WhereToGoFromWWStsPassage>(
                value: WhereToGoFromWWStsPassage.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWStsPassage>(
                value: WhereToGoFromWWStsPassage.ai_sts_passage,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI STS Passage',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWStsPassage>(
                value: WhereToGoFromWWStsPassage.ai_overige_incidenten,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Overige Incidenten',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'STS passage',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Als je vermoedt dat een MCN door een stoptonend sein is gereden, dan:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Laat je de trein direct tot stilstand brengen;\n\n- Vraag je de MCN waar hij exact staat;\n\n- Vraag je uit of constateer je of er sprake is van gevaarzetting:',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '* Botsing, aanrijding;\n* Ontsporing;\n* Door een open overweg gereden;\n* Bijna aanrijding met persoon;\n* Twee treinen binnen 20 meter van elkaar in hetzelfde blok.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Bij gevaarzetting:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Laat je de trein staan;\n\n- Alarmeer je de MKS/BO.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Bij GEEN gevaarzetting:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- In overleg met de MCN laat je de trein verplaatsen van de vrije baan of emplacement naar een perron of zijspoor;\n\n- Informeer je de MKS/BO.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'In alle gevallen laat je de MCN zijn rit pas vervolgen als de MKS/BO jou heeft gemeld dat de MCN toestemming heeft van zijn wachtdienst om de rit te vervolgen. Als je geen zekerheid hebt over de juiste werking van de seingeving informeer je de MKS/BO en de DVL.',
                    ),
                  ],
                ),
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.risico,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                    ),
                  ],
                ),
              ),
            ),
            /*CONTEXT CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Een trein die zonder toestemming een stoptonend sein passeert, komt op infra die niet voor hem gereserveerd is. Hierdoor kan gevaarzetting ontstaan met andere treinen, overweggebruikers en/of werkzaamheden.',
                    ),
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
