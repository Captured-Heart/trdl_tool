import 'package:trdl_tool/all_imports.dart';

class KopvanTrein extends StatelessWidget {
  const KopvanTrein({Key? key}) : super(key: key);

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
                        title: 'Kop van de trein/rangeerdeel voorbij het sein',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Je stelt een rijweg in en deelt de machinist mee dat het sein uit de stand stop is gebracht, of je neemt veiligheidsmaatregelen en geeft de machinist opdracht om te gaan rijden.',
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
                        text: 'Treinen komen niet tijdig tot stilstand voor een gevaarpunt.',
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
                        text: 'Wanneer de kop van de trein of rangeerdeel bij vertrek voorbij het sein staat, kan de machinist niet waarnemen of het sein veilig staat voor vertrek en kan het vertrekproces niet gestart worden.',
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
