import 'package:trdl_tool/all_imports.dart';

class StilleggenTreindienst extends StatelessWidget {
  const StilleggenTreindienst({Key? key}) : super(key: key);

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
                        title: 'Stilleggen treindienst',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer je de opdracht ‘stilleggen treindienst’ krijgt, handel je als volgt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Informeer machinisten via algemene oproep dat de procedure ‘stilleggen treindienst’ wordt opgestart;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Laat reizigerstreinen stoppen langs het eerstvolgende perron, indien nodig laat je de trein afrangeren;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Laat goederentreinen bij voorkeur doorrijden tot het eerstvolgende stoptonende sein.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Algemene oproeptekst alarmering machinisten:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '\'Dit bericht is bestemd voor alle machinisten. Om veiligheidsredenen wordt nu de procedure ‘stilleggen treindienst’ gestart. Machinisten van reizigerstreinen wordt dringend verzocht de trein langs het eerstvolgende perron tot stilstand te brengen en de trein te ontruimen. Machinisten van goederentreinen kunnen doorrijden tot het eerstvolgende stoptonende sein. Indien aanvullende opdrachten nodig zijn, wordt u hierover zo spoedig mogelijk geïnformeerd’.\'',
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
                        text: 'De procedure \'stilleggen treindienst\' wordt geïnitieerd door de OvD-S wanneer er sprake is van een acuut dreigende situatie voor het treinverkeer. Het doel is om binnen 30 minuten beheerst alle bijzonderheden_trein stil te laten staan en alle reizigerstreinen en stationshallen beheerst te ontruimen.',
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
