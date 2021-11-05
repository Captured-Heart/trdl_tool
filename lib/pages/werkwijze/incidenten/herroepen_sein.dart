import 'package:trdl_tool/all_imports.dart';

class HerroepenSein extends StatelessWidget {
  const HerroepenSein({Key? key}) : super(key: key);

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
                            child: TitleText(
                              title: 'Herroepen van een sein',
                            ),
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
                                  'Voor bijsturing mag je een sein herroepen nadat de machinist is ingelicht of wanneer je zeker weet dat er geen machinist op of bij de trein aanwezig is.',
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
                                  'Benader de machinist via de bestaande communicatiemogelijkheden. Als je geen contact krijgt, herroep je het sein.',
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
                              text: 'Het ten onrechte herroepen van seinen.',
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
                                  'Het herroepen van een sein kan noodzakelijk zijn om een verstoring van de treindienst te voorkomen of beperken. Bij het herroepen van een sein voor bijsturing is het inlichten van de machinist wenselijk, om hem niet te laten schrikken van een wisselend seinbeeld.',
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
