import '/all_imports.dart';

enum WhereToGoFromWWProcedureRuClu {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_procedure_ruclu,
}

class WWProcedureRuClu extends StatelessWidget {
  const WWProcedureRuClu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWProcedureRuClu>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWProcedureRuClu result) async {
              if (result == WhereToGoFromWWProcedureRuClu.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWProcedureRuClu.ai_procedure_ruclu) {
                await Navigator.pushNamed(context, 'ai_procedure_ruclu');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWProcedureRuClu>>[
              const PopupMenuItem<WhereToGoFromWWProcedureRuClu>(
                value: WhereToGoFromWWProcedureRuClu.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWProcedureRuClu>(
                value: WhereToGoFromWWProcedureRuClu.ai_procedure_ruclu,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Procedure RU/CLU',
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
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Procedure RU/CLU',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
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
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
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
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Om blus- of reddingswerkzaamheden uit te kunnen voeren aan en/of in de nabijheid van de bovenleiding, moet deze elektrisch veiliggesteld zijn.',
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