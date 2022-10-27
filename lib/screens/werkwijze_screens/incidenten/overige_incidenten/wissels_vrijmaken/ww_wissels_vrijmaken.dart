import '/all_imports.dart';

enum WhereToGoFromWWWisselsVrijmaken {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_stroomstoring,
}

class WWWisselsVrijmaken extends StatelessWidget {
  const WWWisselsVrijmaken({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
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
                    subtitle: Strings.procedure,
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
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Strings.context,
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
    return PopupMenuButton<WhereToGoFromWWWisselsVrijmaken>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWWisselsVrijmaken result) async {
        if (result == WhereToGoFromWWWisselsVrijmaken.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWWisselsVrijmaken.ai_stroomstoring) {
          await Navigator.pushNamed(context, 'ai_stroomstoring');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWWisselsVrijmaken>>[
        const PopupMenuItem<WhereToGoFromWWWisselsVrijmaken>(
          value: WhereToGoFromWWWisselsVrijmaken.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWWisselsVrijmaken>(
          value: WhereToGoFromWWWisselsVrijmaken.ai_stroomstoring,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Stroomstoring',
          ),
        ),
      ],
    );
  }
}
