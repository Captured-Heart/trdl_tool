import '/all_imports.dart';

class WWAanrijdingViaduct extends StatelessWidget {
  const WWAanrijdingViaduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWAanrijdingViaductNavigation(),
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
                    title: 'Aanrijding/aanvaring brug/viaduct',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Na een melding van een aanrijding viaduct of aanvaring brug:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Staak je het verkeer over de betrokken railinfra;\n\n- De MKS/BO geeft aan of de betrokken railinfra bereden mag worden, inclusief de eventuele beperkingen.',
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
                        'Na een aanvaring of aanrijding van een brug of viaduct kan de TRDL er niet meer vanuit gaan dat deze infra nog veilig bereden kan worden.\n\nDe MKS/BO beschikt over informatie van iedere brug of viaduct en kan aangeven onder welke voorwaarden de infra wel of niet bereden mag worden. Een storingsmonteur kan de situatie ter plaatse beoordelen.',
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

class WWAanrijdingViaductNavigation extends StatelessWidget {
  const WWAanrijdingViaductNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_kunstwerken_aanrijding) {
          await Navigator.pushNamed(context, 'ai_kunstwerken_aanrijding');
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
          value: PopupNavigation.ai_kunstwerken_aanrijding,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Aanrijding Viaduct',
          ),
        ),
      ],
    );
  }
}