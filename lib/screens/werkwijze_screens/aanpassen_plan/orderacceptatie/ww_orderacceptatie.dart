import '/all_imports.dart';

class WWOrderAcceptatie extends StatelessWidget {
  const WWOrderAcceptatie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWOrderacceptatieNavigation(),
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
                    title: 'Orderacceptatie',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een bovenlokale orderaanvraag toetst de DVL de aanvraag bij jou op verdringing op het emplacement conform plannormen. Bij een lokale orderaanvraag toets je zelf op verdringing conform plannormen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Utils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Conflicterend spoorgebruik.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Utils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De schaarse infracapaciteit is op basis van toedelingsregels verdeeld en verwerkt in het plan. Infragebruikers kunnen wijzigingen op het plan aanvragen.',
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

class WWOrderacceptatieNavigation extends StatelessWidget {
  const WWOrderacceptatieNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_orderacceptatie) {
          await Navigator.pushNamed(context, 'ai_orderacceptatie');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_orderacceptatie,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Orderacceptatie',
          ),
        ),
      ],
    );
  }
}