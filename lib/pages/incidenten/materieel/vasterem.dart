import 'package:trdl_tool/all_imports.dart';

class VasteRem extends StatelessWidget {
  const VasteRem({Key? key}) : super(key: key);

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
                            child: TitleText(title: 'Vaste rem'),
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
                              text: 'Na een melding van een vaste rem/rook of vuur onder de trein:',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Geef je de machinist opdracht de trein beheerst tot stilstand te brengen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Stel je de gevraagde infra ter beschikking aan de machinist (nevenspoor);',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De machinist geeft aan onder welke omstandigheden hij verder mag rijden.',
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
                              text: 'Trein komt niet tijdig tot stilstand voor het gevaarpunt.',
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
                              text: 'Een vaste rem verhit de wielband. Wanneer de temperatuur te hoog oploopt, kan de wielband van het wiel lopen. Het is van belang de trein zo recht mogelijk door wissels te laten rijden.',
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
