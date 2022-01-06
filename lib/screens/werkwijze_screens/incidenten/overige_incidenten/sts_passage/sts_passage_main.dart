import 'package:trdl_tool/core/all_imports.dart';

class STSPassage extends StatelessWidget {
  const STSPassage({Key? key}) : super(key: key);

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
                        title: 'STS passage',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als je vermoedt dat een machinist door een stoptonend sein is gereden, dan:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Laat je de trein direct tot stilstand brengen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Vraag je de machinist waar hij exact staat;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Vraag je uit of constateer je of er sprake is van gevaarzetting:',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Botsing, aanrijding;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Ontsporing;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Door een open overweg gereden;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Bijna aanrijding met persoon;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '* Twee bijzonderheden_trein binnen 20 meter van elkaar in hetzelfde blok.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Bij gevaarzetting:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Laat je de trein staan;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Alarmeer je de MKS/BO.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Bij GEEN gevaarzetting:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- In overleg met de machinist laat je de trein verplaatsen van de vrije baan of emplacement naar een perron of zijspoor;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Informeer je de MKS/BO.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'In alle gevallen laat je de machinist zijn rit pas vervolgen als de MKS/BO jou heeft gemeld dat de machinist toestemming heeft van zijn wachtdienst om de rit te vervolgen. Als je geen zekerheid hebt over de juiste werking van de seingeving informeer je de MKS/BO en de DVL.',
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
                        text:
                            'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van bijzonderheden_trein wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        text:
                            'Een trein die zonder toestemming een stoptonend sein passeert, komt op infra die niet voor hem gereserveerd is. Hierdoor kan gevaarzetting ontstaan met andere bijzonderheden_trein, overweggebruikers en/of werkzaamheden.',
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
