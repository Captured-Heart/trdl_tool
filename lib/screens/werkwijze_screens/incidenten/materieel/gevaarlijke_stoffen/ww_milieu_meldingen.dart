import '/all_imports.dart';

enum WhereToGoFromWWMilieuMeldingen {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_gevaarlijke_stoffen,
}

class WWMilieuMeldingen extends StatelessWidget {
  const WWMilieuMeldingen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWMilieuMeldingenNavigation(),
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
                    title: 'Meldingen met betrekking tot het milieu',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Meldingen die je krijgt m.b.t. het milieu in of nabij de infra (zoals bodemvervuiling of geluidsoverlast) geef je door aan de MKS/BO.',
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
                    text: 'Overtreden van de omgevingsvergunning.',
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
                        'Alle activiteiten op emplacementen vallen onder omgevingsvergunningen. De MKS/BO meldt overtredingen van deze vergunningen aan de milieudienst.',
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

class WWMilieuMeldingenNavigation extends StatelessWidget {
  const WWMilieuMeldingenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWMilieuMeldingen>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWMilieuMeldingen result) async {
        if (result == WhereToGoFromWWMilieuMeldingen.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWMilieuMeldingen.ai_gevaarlijke_stoffen) {
          await Navigator.pushNamed(context, 'ai_gevaarlijke_stoffen');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWMilieuMeldingen>>[
        const PopupMenuItem<WhereToGoFromWWMilieuMeldingen>(
          value: WhereToGoFromWWMilieuMeldingen.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWMilieuMeldingen>(
          value: WhereToGoFromWWMilieuMeldingen.ai_gevaarlijke_stoffen,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Gevaarlijke Stoffen',
          ),
        ),
      ],
    );
  }
}