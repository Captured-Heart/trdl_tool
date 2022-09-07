import 'package:flutter_animate/flutter_animate.dart';
import 'package:trdl_tool/all_imports.dart';

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
                    children: [
                      const TitleText(
                        title: 'ProChat',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text:
                            'In een latere update zal hier de ProChat verschijnen. Zoek je iemand om tegenaan te kletsen of wil je wat kwijt over de app? Vertel het ons.',
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Animate(
                        effects: [
                          FadeEffect(duration: 1000.ms),
                          ScaleEffect(duration: 1000.ms),
                        ],
                        child: const NavButton(
                          buttontext: 'Klik hier voor de testversie',
                          destination: 'prochat_main',
                        ),
                      ),
                      const SizedBoxH(),
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
