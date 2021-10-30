import 'package:trdl_tool/all_imports.dart';

class Stroomstoring extends StatelessWidget {
  const Stroomstoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

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
              //PROCEDURE CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(title: 'Stroomstoring'),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Procedure',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Wanneer na een grote stroomstoring de spanning weer terugkeert verschijnt de melding “wissels vrijmaken”. Je mag dit doen nadat aan de volgende voorwaarden is voldaan:',
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
                              text: '- ARI is uit;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Er rijden geen treinen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Er staan geen seinen in de automaat;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Er wordt niet gekrukt.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //RISICO CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Risico\'s',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Treinen komen niet tijdig tot stilstand voor het gevaarpunt en/of onbedoeld omlopen van wissels.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //CONTEXT CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Context',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Bij een stroomstoring is de stroomvoorziening naar de beveiliging onderbroken. De beveiliging haalt de benodigde stroom uit accu’s, welke continue gevoed worden. Wanneer nu de stroomvoorziening naar de accu’s onderbroken wordt zal de beveiliging nog enige tijd gebruik kunnen maken van de aanwezige stroom in deze accu’s (kleine stroomstoring).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Wanneer de stroomvoorziening vanuit de accu’s naar de beveiliging onderbroken wordt (grote stroomstoring) werkt in feite de beveiliging niet meer. Alle relais vallen af en zie je overal spoorbezettingen. Dit zelfde gebeurt bij het schakelen van de 3KV (de stroomvoorziening naar de beveiliging).',
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
