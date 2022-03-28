import 'package:trdl_tool/all_imports.dart';

class WWStroomstoring extends StatelessWidget {
  const WWStroomstoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Stroomstoring',
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
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Stroomstoring',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Wanneer na een grote stroomstoring de spanning weer terugkeert verschijnt de melding \'wissels vrijmaken\'. Je mag dit doen nadat aan de volgende voorwaarden is voldaan:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- ARI is uit;\n\n- Er rijden geen treinen;\n\n- Er staan geen seinen in de automaat;\n\n- Er wordt niet gekrukt.',
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
                            'Treinen komen niet tijdig tot stilstand voor het gevaarpunt en/of onbedoeld omlopen van wissels.',
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
                        text:
                            'Bij een stroomstoring is de stroomvoorziening naar de beveiliging onderbroken. De beveiliging haalt de benodigde stroom uit accu\'s, welke continue gevoed worden. Wanneer nu de stroomvoorziening naar de accu\'s onderbroken wordt zal de beveiliging nog enige tijd gebruik kunnen maken van de aanwezige stroom in deze accu\'s (kleine stroomstoring).\n\nWanneer de stroomvoorziening vanuit de accu\'s naar de beveiliging onderbroken wordt (grote stroomstoring) werkt in feite de beveiliging niet meer. Alle relais vallen af en je ziet overal spoorbezettingen. Ditzelfde gebeurt bij het schakelen van de 3KV (de stroomvoorziening naar de beveiliging).',
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
