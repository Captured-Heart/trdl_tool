import 'package:trdl_tool/core/all_imports.dart';

class OntruimenPost extends StatelessWidget {
  const OntruimenPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Ontruimen',
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
                  padding: kCardElevation,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Ontruimen post',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Zorg voor je persoonlijke veiligheid en neem een mobiele noodtelefoon mee.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: '* Acuut ontruimen',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Je verlaat de post en plaatst een alarmoproep met de mobiele noodtelefoon.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
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
                        text: 'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
