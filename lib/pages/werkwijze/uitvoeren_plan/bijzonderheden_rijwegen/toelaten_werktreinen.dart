import 'package:trdl_tool/all_imports.dart';

class ToelatenWerktreinen extends StatelessWidget {
  const ToelatenWerktreinen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'TRDLtool',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Toelaten Werktreinen',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Overleg met de LWB;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Hef éénmalig de daarvoor noodzakelijke veiligheidsmaatregelen op;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Laat de werktrein na overleg met de LWB op een veilige manier toe tot de beschikbaar gestelde infracapaciteit;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Breng de veiligheidsmaatregelen weer aan na het passeren van de werktrein.',
                      ),
                    ],
                  ),
                ),
              ),
              /*RISICO CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.risico,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CONTEXT CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.context,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Op de werkplek zijn de werkenden door middel van veiligheidsmaatregelen beschermd tegen aanrijdgevaar. Op het moment dat een trein noodzakelijk voor de werkzaamheden toegelaten moet worden, geeft de LWB toestemming als de werkenden adequaat beschermd zijn.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Voorafgaand aan de werkzaamheden stellen treindienstleider en LWB samen vast of ze over dezelfde WBI/WECO beschikken.',
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
