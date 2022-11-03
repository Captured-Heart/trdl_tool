import '/all_imports.dart';

enum WhereToGoFromWWVervoersregeling {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_vervoersregeling,
}

class WWVervoersregeling extends StatelessWidget {
  const WWVervoersregeling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWVervoersregelingNavigation(),
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
                    title: 'Treinen met een Vervoersregeling',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Je volgt voor zowel een BP trein als een BV trein de beperkingen op zoals die in de regeling zijn aangegeven.',
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
                    text:
                        'Conflicterend spoorgebruik, voor treinen met beperkende voorwaarden.',
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
                        'Voor vervoer waarbij afmetingen, gewicht, aard van de lading of het materieeltype maatregelen vergen, wordt een vervoersregeling gemaakt. De betrokken trein wordt dan of een BV trein of een BP trein. Voor een BP trein gelden de standaard voorwaarden BP 1-2-3.',
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

class WWVervoersregelingNavigation extends StatelessWidget {
  const WWVervoersregelingNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWVervoersregeling>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWVervoersregeling result) async {
        if (result == WhereToGoFromWWVervoersregeling.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWVervoersregeling.ai_vervoersregeling) {
          await Navigator.pushNamed(context, 'ai_vervoersregeling');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWVervoersregeling>>[
        const PopupMenuItem<WhereToGoFromWWVervoersregeling>(
          value: WhereToGoFromWWVervoersregeling.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWVervoersregeling>(
          value: WhereToGoFromWWVervoersregeling.ai_vervoersregeling,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Treinen met Vervoersregeling',
          ),
        ),
      ],
    );
  }
}