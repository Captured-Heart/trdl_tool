import 'package:trdl_tool/core/all_imports.dart';

class Ncbg extends StatelessWidget {
  const Ncbg({Key? key}) : super(key: key);

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
                        title: 'NCBG',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: 'Sturingsniveau en uitzonderingen',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Binnen een NCBG kent men in beginsel twee verschillende sturingsniveaus, namelijk:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Rijwegniveau;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- TijdRuimte-slotniveau.',
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
