import 'package:trdl_tool/all_imports.dart';

class ResetAssenteller extends StatelessWidget {
  const ResetAssenteller({Key? key}) : super(key: key);

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
                        title: 'Reset assenteller AzLM',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Voorbereidende reset',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer de monteur zich meldt voor het uitvoeren van een voorbereidende reset zorg je dat de betreffende sporen en/of wissels treinvrij zijn en blijven.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Nadat de monteur de voorbereidende reset heeft uitgevoerd:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Zorg je dat een veegtrein klaarstaat om de betreffende sporen en/of wissels te berijden;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Laat je de veegtrein na toestemming van de monteur vertrekken en laat je de machinist zich melden wanneer hij de betreffende sporen en/of wissels in zijn geheel heeft bereden;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Meld je monteur wanneer de veegtrein de betreffende sporen en/of wissels in zijn geheel heeft bereden.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Harde reset',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: 'Wanneer de monteur zich meldt voor het uitvoeren van een harde reset zorg je dat de betreffende sporen en/of wissels treinvrij zijn en blijven. Je meldt dit aan de monteur. Wanneer je geen uitspraak kunt doen over het treinvrij zijn van de betreffende sporen en/of wissels meld je dit ook aan de monteur.',
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
                        text: 'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        text: 'Wanneer een assentelinstallatie niet met zekerheid kan vaststellen of het saldo van het aantal in- en uitgaande assen nul is, onstaat een gestoorde sectie.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De voorbereidende reset is de meest veilige manier om een sectie weer vrij te melden na een storing of defect, omdat de veegtrein controleert dat de sectie daadwerkelijk vrij en onbezet is en het assentelsysteem correct functioneert. De ingezette veegtrein mag ook een trein met reizigers zijn.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer een voorbereidende reset niet mogelijk is kan een harde reset gegeven worden.',
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
