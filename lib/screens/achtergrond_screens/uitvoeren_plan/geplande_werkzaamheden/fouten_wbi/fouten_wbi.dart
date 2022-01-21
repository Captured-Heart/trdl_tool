import 'package:trdl_tool/core/all_imports.dart';

class FoutenWBIAchtergrond extends StatelessWidget {
  const FoutenWBIAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Fouten WBI',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*CARD #1*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Fouten in de WBI',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer er een fout in de WBI is geconstateerd zijn er twee mogelijkheden:',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Meer dan 72 uur voor uitvoering:',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Bij meer dan 72 uur voor uitvoering neem je contact op met de afdeling Werkplekbeveiliging van uw regio. Treindienstleider en medewerker Werkplekbeveiliging stemmen de vereiste wijzigingen af, waarna de medewerker Werkplekbeveiliging de WBI aanpast in overleg met de betrokken aannemer.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Voorwaarde daarbij is dat de gewijzigde WBI na aanlevering door de treindienstleider in overleg met de medewerker Werkplekbeveiliging wordt gecontroleerd.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Binnen 72 uur voor uitvoering:',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Binnen 72 uur voor uitvoering neem je contact op met de medewerker 24/7 werkplekbeveiliging. De medewerker 24/7 Werkplekbeveiliging bepaalt of er een versieophoging of een penwijziging noodzakelijk is. Een versieophoging of penwijziging kan slechts plaatsvinden indien zowel treindienstleider als medewerker 24/7 Werkplekbeveiliging hier mee instemmen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Als er geen overeenstemming wordt bereikt over een penwijziging/versieophoging of een penwijziging/versieophoging geen oplossing biedt en daardoor werkzaamheden dreigen te worden afgeblazen, dan wordt via de medewerker 24/7 werkplekbeveiliging naar de OvD-S geëscaleerd.',
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
