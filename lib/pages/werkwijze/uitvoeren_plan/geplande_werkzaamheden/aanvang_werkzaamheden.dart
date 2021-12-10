import 'package:trdl_tool/all_imports.dart';

class AanvangWerkzaamheden extends StatelessWidget {
  const AanvangWerkzaamheden({Key? key}) : super(key: key);

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
                        title: 'Aanvang Werkzaamheden',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Neem de (veiligheids)maatregelen die in de WBI/WECO zijn vermeld of met de LWB zijn afgesproken;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Meld de LWB dat je de infracapaciteit benoemd op de WBI/WECO beschikbaar hebt gesteld voor werkzaamheden.',
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
                        text: 'Bij geplande werkzaamheden wordt in de voorbereiding op de werkzaamheden een werkplekbeveiligingsinstructie (WBI) gemaakt. In de WBI/WECO worden de gemaakte afspraken voor de werkplekbeveiliging vastgelegd.',
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
