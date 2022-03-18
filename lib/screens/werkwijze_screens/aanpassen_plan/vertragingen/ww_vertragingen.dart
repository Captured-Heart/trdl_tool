import 'package:trdl_tool/core/all_imports.dart';

class WerkwijzeVertragingen extends StatelessWidget {
  const WerkwijzeVertragingen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Vertragingen',
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
                      TitleText(title: 'Vertragingen'),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij vertragingen is het belangrijk de treinenloop zo goed mogelijk volgens plan te laten verlopen. Daar waar het plan aangepast moet worden, gebeurt dat zoveel mogelijk volgens vooraf afgesproken afhandelingsafspraken. Deze afhandelingsafspraken zijn:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Infragerelateerd, of;\n\n- Treingerelateerd.',
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
