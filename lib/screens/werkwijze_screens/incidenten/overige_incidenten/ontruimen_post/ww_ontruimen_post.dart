import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWOntruimenPost {
  home_screen,
  ai_ontruimenpost,
  ai_stilleggentreindienst,
  ai_overigeincidenten,
}

class WWOntruimenPost extends StatelessWidget {
  const WWOntruimenPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWOntruimenPost>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWOntruimenPost result) {
              if (result == WhereToGoFromWWOntruimenPost.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWOntruimenPost.ai_ontruimenpost) {
                Navigator.pushNamed(context, 'ai_ontruimenpost');
              } else if (result ==
                  WhereToGoFromWWOntruimenPost.ai_stilleggentreindienst) {
                Navigator.pushNamed(context, 'ai_stilleggentreindienst');
              } else if (result ==
                  WhereToGoFromWWOntruimenPost.ai_overigeincidenten) {
                Navigator.pushNamed(context, 'ai_overigeincidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWOntruimenPost>>[
              PopupMenuItem<WhereToGoFromWWOntruimenPost>(
                value: WhereToGoFromWWOntruimenPost.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWOntruimenPost>(
                value: WhereToGoFromWWOntruimenPost.ai_ontruimenpost,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Ontruimen Post'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWOntruimenPost>(
                value: WhereToGoFromWWOntruimenPost.ai_stilleggentreindienst,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Stilleggen Treindienst'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWOntruimenPost>(
                value: WhereToGoFromWWOntruimenPost.ai_overigeincidenten,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Overige Incidenten'),
                  ],
                ),
              ),
            ],
          ),
          const HomeButton(),
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
                        title: 'Ontruimen post',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Zorg voor je persoonlijke veiligheid en neem een mobiele noodtelefoon mee.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: '* Acuut ontruimen',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Je verlaat de post en plaatst een alarmoproep met de mobiele noodtelefoon.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: '* Beheerst ontruimen',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Informeer MCN via de algemene oproep:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 2,
                        text:
                            '- \'- Dit bericht is bestemd voor alle machinisten. In verband met een calamiteit op de verkeersleidingspost . . . (naam post) zal iedereen deze post op korte termijn verlaten.\n\nMachinisten van reizigerstreinen moeten de reizigers op het eerstvolgende perron of anders een andere veilige plaats evacueren. Probeer het langdurig dicht liggen van overwegen te voorkomen. Indien aanvullende opdrachten nodig zijn wordt u hierover zo spoedig mogelijk geïnformeerd. Einde bericht. -\'',
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
                        text:
                            'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
