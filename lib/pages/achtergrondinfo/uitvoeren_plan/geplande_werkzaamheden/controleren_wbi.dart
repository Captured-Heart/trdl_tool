import 'package:trdl_tool/all_imports.dart';

class ControlerenWBIAchtergrond extends StatelessWidget {
  const ControlerenWBIAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool'),
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Controleren WBI',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Toetscriteria WBI/WECO',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Voor aanvang van de werkzaamheden controleer je of:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- niet onbedoeld een rijweg instelbaar is naar het gebied genoemd in de rubriek \'aanduiding van de buitendienststelling\';',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- de maatregelen van de LWB invloed hebben op jouw eigen maatregelen;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- bij werkplekbeveiliging met de zelfsignalerende kortsluitlans er geen rijweg ingesteld moet worden vanaf de vrije baan, tenzij de vrije baan onderdeel is van de buitendienststelling;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- Ben jij in de WBI/WECO aangewezen als communicerend treindienstleider dan stel je vast of:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '* de betrokken treindienstleider(s) in het bezit is (zijn) van de juiste WBI/WECO;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '* er geen factoren zijn die de aanvang van de werkzaamheden kunnen beïnvloeden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/wbiOverzicht.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Je hebt in procesleiding de beschikking over een koppeling met het WBI kantoor. Dit helpt met het controleren van de WBI.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Via de database zijn de te keuren WBI’s terug te vinden. Deze hebben de status ‘niet gekeurd’.  Alle maatregelen die al zijn ingevoerd zijn terug te vinden en door middel van de preview functie zijn alle periodes van een WBI van tevoren te bekijken via een voorbeeld in een oranje kleur.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Als een WBI/WECO gekeurd is, krijgt deze de status ‘goedgekeurd’ of ‘afgekeurd’ door jou toegewezen in procesleiding.',
                            ),
                          ),
                        ],
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
