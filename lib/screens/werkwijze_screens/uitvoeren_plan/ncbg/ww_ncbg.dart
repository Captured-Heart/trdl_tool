import 'package:trdl_tool/core/all_imports.dart';

class WWNcbg extends StatelessWidget {
  const WWNcbg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'NCBG',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
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
                      title: 'NCBG',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Sturingsniveau en uitzonderingen',
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
                      text: '- Rijwegniveau;\n\n- TijdRuimte-slotniveau.',
                    ),
                  ],
                ),
              ),
            ),
            /*ACHTERGROND CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const TitleText(
                      title: 'Achtergrondinfo',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        NavButton(
                          buttontext: 'NCBG - Achtergrond',
                          destination: 'ai_ncbg',
                        ),
                      ],
                    ),
                    const SizedBoxH(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}