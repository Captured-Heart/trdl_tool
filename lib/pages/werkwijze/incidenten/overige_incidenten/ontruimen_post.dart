import 'package:trdl_tool/all_imports.dart';

class OntruimenPost extends StatelessWidget {
  const OntruimenPost({Key? key}) : super(key: key);

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
                        title: 'Ontruimen post',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Zorg voor je persoonlijke veiligheid en neem een mobiele noodtelefoon mee.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '* Acuut ontruimen',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Je verlaat de post en plaatst een alarmoproep met de mobiele noodtelefoon.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '* Beheerst ontruimen',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Informeer machinisten via de algemene oproep:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 2,
                        text: '- \'Dit bericht is bestemd voor alle machinisten. In verband met een calamiteit op de verkeersleidingspost . . . (naam post) zal iedereen deze post op korte termijn verlaten.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 2,
                        text: 'Machinisten van reizigerstreinen moeten de reizigers op het eerstvolgende perron of anders een andere veilige plaats evacueren. Probeer het langdurig dicht liggen van overwegen te voorkomen. Indien aanvullende opdrachten nodig zijn wordt u hierover zo spoedig mogelijk geïnformeerd. Einde bericht. -\'',
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
                        text: 'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van bijzonderheden_trein wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        text: 'Zie het ontruimingsplan van de post.',
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
