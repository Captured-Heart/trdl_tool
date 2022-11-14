import '/all_imports.dart';

class WWWisselsVrijmaken extends StatelessWidget {
  const WWWisselsVrijmaken({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWWisselsVrijmakenNavigation(),
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
                    title: 'Wissels vrijmaken',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Wissels vrijmaken mag pas als:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- ARI uitstaat;\n\n- Alle treinen stilstaan;\n\n- Seinen niet meer in de automaat staan;\n\n- Wissels niet worden gekrukt.',
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
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        "De communicatie tussen de beveiliging en de bediening is als gevolg van een stroomonderbreking niet meer betrouwbaar. Met de opdracht 'wissels vrijmaken' breng je de beveiligingsapparatuur na deze stroomonderbreking in de ruststand van de bediening terug.",
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

class WWWisselsVrijmakenNavigation extends StatelessWidget {
  const WWWisselsVrijmakenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_stroomstoring) {
          await Navigator.pushNamed(context, 'ai_stroomstoring');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_stroomstoring,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Stroomstoring',
          ),
        ),
      ],
    );
  }
}