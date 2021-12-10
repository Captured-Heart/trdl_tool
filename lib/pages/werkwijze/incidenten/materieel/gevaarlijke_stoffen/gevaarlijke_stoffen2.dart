import 'package:trdl_tool/all_imports.dart';

class GevaarlijkeStoffen2 extends StatelessWidget {
  const GevaarlijkeStoffen2({Key? key}) : super(key: key);

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
                        title: 'Gevaarlijke stoffen',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Als je een onregelmatigheid met gevaarlijke stoffen gemeld krijgt, neem je de volgende maatregelen:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Staak de trein- en rangeerdienst op het betrokken gebied;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Voorkom rijweginstelling naar het betrokken gebied;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Laat de MKS/BO de wisselverwarming doven;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Jouw melding bevat in ieder geval:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- De plaats van de onregelmatigheid;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- De betrokken trein;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- De aard van de onregelmatigheid.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'En indien mogelijk:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- GEVI-nummer;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- UN-nummer;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Gevaaretiket;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Plaats van de wagen in de trein;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Wagennummer.',
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
                        text: 'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van bijzonderheden_trein wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        text: 'Een trein waarbij een incident met gevaarlijke stoffen optreedt mag niet verder rijden. Afhankelijk van de gevaarlijke stof moet de trein- en rangeerdienst gestaakt worden. De hulpdiensten bepalen op basis van windrichting, locatie, gevaarlijke stof en/of grootte van uitstroom hun inzet.',
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
