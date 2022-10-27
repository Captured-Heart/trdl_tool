import '/all_imports.dart';

enum WhereToGoFromWWOnjuisteDetectie {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_onjuiste_detectie,
}

class WWOnjuisteDetectie extends StatelessWidget {
  const WWOnjuisteDetectie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWOnjuisteDetectieNavigation(),
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
                    title: 'Voertuigen zonder juiste detectie',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Strings.procedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Als je een voertuig zonder juiste treindetectie laat staan op een gecontroleerd spoor, dan neem je veiligheidsmaatregelen om te voorkomen dat er een rijweg van of naar dit spoor kan worden ingesteld.\n\nAls je een rijweg wilt instellen voor een voertuig zonder juiste treindetectie dan:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Licht je de brugwachters in van de niet door jou beheerste bruggen;\n\n- Vraag je de MCN zich terug te melden zodra hij op de plaats van bestemming is of achter het tegensein staat;\n\n- Maak je gebruik van een NDM- of STS rijweg.',
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
                    text:
                        'Bij een voertuig zonder juiste treindetectie ontbreekt de garantie op signalering. Hierdoor kan de beveiliging bij rijweginstelling niet of niet goed functioneren van of naar het betrokken spoor.',
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

class WWOnjuisteDetectieNavigation extends StatelessWidget {
  const WWOnjuisteDetectieNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWOnjuisteDetectie>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWOnjuisteDetectie result) async {
        if (result == WhereToGoFromWWOnjuisteDetectie.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWOnjuisteDetectie.ai_onjuiste_detectie) {
          await Navigator.pushNamed(context, 'ai_onjuiste_detectie');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWOnjuisteDetectie>>[
        const PopupMenuItem<WhereToGoFromWWOnjuisteDetectie>(
          value: WhereToGoFromWWOnjuisteDetectie.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWOnjuisteDetectie>(
          value: WhereToGoFromWWOnjuisteDetectie.ai_onjuiste_detectie,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Onjuiste Detectie',
          ),
        ),
      ],
    );
  }
}
