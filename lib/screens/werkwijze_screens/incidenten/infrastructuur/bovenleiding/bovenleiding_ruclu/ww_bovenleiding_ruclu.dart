import '/all_imports.dart';

class WWProcedureRuClu extends StatelessWidget {
  const WWProcedureRuClu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWProcedureRuCluNavigation(),
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
                    title: 'Procedure RU/CLU',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De MKS/BO verzoekt je de procedure RU/CLU te starten:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Bel het OBI;\n\n- Staak het treinverkeer in betrokken gebied en neem veiligheidsmaatregelen;\n\n- Maak met het OBI een WECO op;\n\n- Geef aan de MKS/BO door welk gebied spanningsloos is en wat de beperkingen zijn;\n\n- Let er op dat de stroomafnemers van treinen in het betrokken gebied neergelaten zijn voor de spanning weer ingeschakeld wordt;',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De AL zorgt voor communicatie tussen EV en brandweer en informeert jou over het verkleinen of inschakelen van het uitgeschakelde gebied.',
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
                        'Om blus- of reddingswerkzaamheden uit te kunnen voeren aan en/of in de nabijheid van de bovenleiding, moet deze elektrisch veiliggesteld zijn.',
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

class WWProcedureRuCluNavigation extends StatelessWidget {
  const WWProcedureRuCluNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_bovenleiding_ruclu) {
          await Navigator.pushNamed(context, 'ai_bovenleiding_ruclu');
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
          value: PopupNavigation.ai_bovenleiding_ruclu,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Procedure RU/CLU',
          ),
        ),
      ],
    );
  }
}