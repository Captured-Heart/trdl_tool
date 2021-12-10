import 'package:trdl_tool/all_imports.dart';

class Vertragingen extends StatelessWidget {
  const Vertragingen({Key? key}) : super(key: key);

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
                      TitleText(title: 'Vertragingen'),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij vertragingen is het belangrijk de treinenloop zo goed mogelijk volgens plan te laten verlopen. Daar waar het plan aangepast moet worden, gebeurt dat zoveel mogelijk volgens vooraf afgesproken afhandelingsafspraken. Deze afhandelingsafspraken zijn:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Infragerelateerd, of;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Treingerelateerd.',
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
