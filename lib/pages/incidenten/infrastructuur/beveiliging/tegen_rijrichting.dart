import 'package:trdl_tool/all_imports.dart';

class TegenRijrichting extends StatelessWidget {
  const TegenRijrichting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarText(title: 'TRDLtool'),
        actions: [
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
                        children: [
                          Expanded(
                            child: TitleText(
                              title: 'Tegen de rijrichting rijden',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Procedure',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Links rijden tegen de rijrichting bij linkerspoor beveiliging:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Geef een aanwijzing OVW af voor alle overwegen.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Rechts rijden tegen rijrichting bij linkerspoor beveiliging:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Toegestaan wanneer:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- De overwegen zijn voorzien van een extra aankondigingssectie plus aanwijzing OVW;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Het baanvak is uitgerust met ULS óf;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(text: '- Er geen overwegen zijn.'),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                                text:
                                    '- Keren op de vrije baan bij dubbel/enkelspoor beveiliging:'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                                text:
                                    '- Geef een aanwijzing OVW af voor de overwegen waarvan de trein de aankondiging volledige gepasseerd is.'),
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
                        children: [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Risico\'s',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        children: [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Context',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De blokbeveiliging controleert bij rijweginstelling de dynamische voorwaarden bij rijrichting naar de vrije baan. Bij het rijden tegen de rijrichting in wordt niet aan alle dynamische voorwaarden voldaan, waardoor de blokbeveiliging niet of niet volledig werkt.',
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
