import 'package:trdl_tool/core/all_imports.dart';

class ProcedureRuClu extends StatelessWidget {
  const ProcedureRuClu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Procedure RU/CLU',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*PROCEDURE CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
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
                        text: 'De MKS/BO verzoekt je de procedure RU/CLU te starten:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Bel het OBI;\n\n- Staak het treinverkeer in betrokken gebied en neem veiligheidsmaatregelen;\n\n- Maak met het OBI een WECO op;\n\n- Geef aan de MKS/BO door welk gebied spanningsloos is en wat de beperkingen zijn;\n\n- Let er op dat de stroomafnemers van treinen in het betrokken gebied neergelaten zijn voor de spanning weer ingeschakeld wordt;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De AL zorgt voor communicatie tussen EV en brandweer en informeert jou over het verkleinen of inschakelen van het uitgeschakelde gebied.',
                      ),
                    ],
                  ),
                ),
              ),
              /*RISICO CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: Strings.risico,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CONTEXT CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: Strings.context,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Om blus- of reddingswerkzaamheden uit te kunnen voeren aan en/of in de nabijheid van de bovenleiding, moet deze elektrisch veiliggesteld zijn.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
