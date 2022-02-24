import 'package:trdl_tool/core/all_imports.dart';

class OpengeredenWissel extends StatelessWidget {
  const OpengeredenWissel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Opengereden wissel',
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
                        title: 'Opengereden wissel',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Stel vast of het wissel eendelig, meerdelig of EBI-switch is.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Eendelig: laat het wissel alleen met de punt mee vrijmaken wanneer er geen uiterlijke beschadigingen zijn. Je mag het wissel weer laten berijden na de constatering dat de tongen in de juiste stand liggen en aansluiten. Dit laat je doen met maximaal 10 km/h, tenzij anders wordt aangegeven door de storingsdienst;\n\n- Meerdelig: laat het wissel alleen met de punt mee vrijmaken met maximaal 10 km/h na toestemming van de storingsdienst;\n\n- EBI-switch: laat het wissel alleen met de punt mee vrijmaken met maximaal 10 km/h en behandel het als een beschadigd wissel.',
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
                        text: 'Een trein kan een wissel met de punt mee in de verkeerde stand berijden. De wisseltongen worden dan open gereden en het wissel is daardoor niet meer veilig berijdbaar. Van een open gereden wissel moet de afstelling gecontroleerd worden.',
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
