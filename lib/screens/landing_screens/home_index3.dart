import 'package:trdl_tool/core/all_imports.dart';

class HomeIndex3 extends StatelessWidget {
  const HomeIndex3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'ProChat',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'In een latere update zal hier de ProChat verschijnen. Zoek je iemand om tegenaan te kletsen of wil je wat kwijt over de app? Vertel het ons.',
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      NavButton(
                        buttontext: 'Klik hier voor de testversie',
                        destination: 'prochatmain',
                      ),
                      SizedBoxH(),
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
