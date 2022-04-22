import 'package:trdl_tool/all_imports.dart';

class AIControlerenWBI extends StatelessWidget {
  const AIControlerenWBI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
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
                        title: 'Controleren WBI',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Toetscriteria WBI/WECO',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Voor aanvang van de werkzaamheden controleer je of:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- niet onbedoeld een rijweg instelbaar is naar het gebied genoemd in de rubriek \'aanduiding van de buitendienststelling\';',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- de maatregelen van de LWB invloed hebben op jouw eigen maatregelen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- bij werkplekbeveiliging met de zelfsignalerende kortsluitlans er geen rijweg ingesteld moet worden vanaf de vrije baan, tenzij de vrije baan onderdeel is van de buitendienststelling;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Ben jij in de WBI/WECO aangewezen als communicerend treindienstleider dan stel je vast of:',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '* de betrokken treindienstleider(s) in het bezit is (zijn) van de juiste WBI/WECO;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '* er geen factoren zijn die de aanvang van de werkzaamheden kunnen beïnvloeden.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/wbiOverzicht.png',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je hebt in procesleiding de beschikking over een koppeling met het WBI kantoor. Dit helpt met het controleren van de WBI.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Via de database zijn de te keuren WBI’s terug te vinden. Deze hebben de status ‘niet gekeurd’.  Alle maatregelen die al zijn ingevoerd zijn terug te vinden en door middel van de preview functie zijn alle periodes van een WBI van tevoren te bekijken via een voorbeeld in een oranje kleur.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als een WBI/WECO gekeurd is, krijgt deze de status ‘goedgekeurd’ of ‘afgekeurd’ door jou toegewezen in procesleiding.',
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
