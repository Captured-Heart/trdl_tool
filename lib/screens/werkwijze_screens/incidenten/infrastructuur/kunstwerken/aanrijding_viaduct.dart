import 'package:trdl_tool/core/all_imports.dart';

class AanrijdingViaduct extends StatelessWidget {
  const AanrijdingViaduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Aanrijding viaduct',
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
                        title: 'Aanrijding/aanvaring brug/viaduct',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Na een melding van een aanrijding viaduct of aanvaring brug:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Staak je het verkeer over de betrokken railinfra;\n\n- De MKS/BO geeft aan of de betrokken railinfra bereden mag worden, inclusief de eventuele beperkingen.',
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
                        text: 'Na een aanvaring of aanrijding van een brug of viaduct kan de TRDL er niet meer vanuit gaan dat deze infra nog veilig bereden kan worden.\n\nDe MKS/BO beschikt over informatie van iedere brug of viaduct en kan aangeven onder welke voorwaarden de infra wel of niet bereden mag worden. Een storingsmonteur kan de situatie ter plaatse beoordelen.'),
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
