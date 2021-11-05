import 'package:trdl_tool/all_imports.dart';

class ATBVeiligheid extends StatelessWidget {
  const ATBVeiligheid({Key? key}) : super(key: key);

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
              /*PROCEDURE CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(title: 'ATB veiligheidsstoring'),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      const CardTitle(
                        title: Strings.procedure,
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Bij een ATB veiligheidsstoring aan de baan voorkom je rijweginstelling naar het betrokken spoor.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Je stelt pas een rijweg in naar het betrokken spoor nadat je de machinist hebt ingelicht.',
                            ),
                          ),
                        ],
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
                    children: [
                      const CardTitle(
                        title: Strings.risico,
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Het opvolgen van het onjuiste seinbeeld door machinisten.',
                            ),
                          ),
                        ],
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
                    children: [
                      const CardTitle(
                        title: Strings.context,
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Er is sprake van een ATB veiligheidsstoring wanneer de treinbeveiliging (ATB) een hogere snelheid aangeeft dan de blokbeveiliging (seinen). De machinist is mogelijk niet op de hoogte van de afwijking en wordt niet door de treinbeveiliging beschermd.',
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
