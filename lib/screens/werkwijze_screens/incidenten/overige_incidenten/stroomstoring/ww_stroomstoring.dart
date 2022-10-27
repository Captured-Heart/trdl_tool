import '/all_imports.dart';

enum WhereToGoFromWWStroomstoring {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_stroomstoring,
  // ignore: constant_identifier_names
  ai_overige_incidenten,
}

class WWStroomstoring extends StatelessWidget {
  const WWStroomstoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWStroomstoringNavigation(),
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
                    title: 'Stroomstoring',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Wanneer na een grote stroomstoring de spanning weer terugkeert verschijnt de melding 'wissels vrijmaken'. Je mag dit doen nadat aan de volgende voorwaarden is voldaan:",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- ARI is uit;\n\n- Er rijden geen treinen;\n\n- Er staan geen seinen in de automaat;\n\n- Er wordt niet gekrukt.',
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
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt en/of onbedoeld omlopen van wissels.',
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
                        "Bij een stroomstoring is de stroomvoorziening naar de beveiliging onderbroken. De beveiliging haalt de benodigde stroom uit accu's, welke continue gevoed worden. Wanneer nu de stroomvoorziening naar de accu's onderbroken wordt zal de beveiliging nog enige tijd gebruik kunnen maken van de aanwezige stroom in deze accu's (kleine stroomstoring).\n\nWanneer de stroomvoorziening vanuit de accu's naar de beveiliging onderbroken wordt (grote stroomstoring) werkt in feite de beveiliging niet meer. Alle relais vallen af en je ziet overal spoorbezettingen. Ditzelfde gebeurt bij het schakelen van de 3KV (de stroomvoorziening naar de beveiliging).",
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

class WWStroomstoringNavigation extends StatelessWidget {
  const WWStroomstoringNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWStroomstoring>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWStroomstoring result) async {
        if (result == WhereToGoFromWWStroomstoring.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWStroomstoring.ai_stroomstoring) {
          await Navigator.pushNamed(context, 'ai_stroomstoring');
        } else if (result ==
            WhereToGoFromWWStroomstoring.ai_overige_incidenten) {
          await Navigator.pushNamed(
            context,
            'ai_overige_incidenten',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWStroomstoring>>[
        const PopupMenuItem<WhereToGoFromWWStroomstoring>(
          value: WhereToGoFromWWStroomstoring.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWStroomstoring>(
          value: WhereToGoFromWWStroomstoring.ai_stroomstoring,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Stroomstoring',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWStroomstoring>(
          value: WhereToGoFromWWStroomstoring.ai_overige_incidenten,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Overige Incidenten',
          ),
        ),
      ],
    );
  }
}
