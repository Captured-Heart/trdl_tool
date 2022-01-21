import 'package:trdl_tool/core/all_imports.dart';

class StappenplanVersperringen extends StatelessWidget {
  const StappenplanVersperringen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Stappenplan versperringen',
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
                      TitleText(title: 'Stappenplan Versperringen'),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bepaal samen met de DVL de (infra)beperkingen en (-)mogelijkheden en neem samen met de DVL het verdelingsbesluit. Op verzoek van de DVL toets je de versperringsmaatregel en geef je hierbij aan of en vanaf wanneer de versperringsmaatregel uitvoerbaar is.',
                      ),
                    ],
                  ),
                ),
              ),
              /*RISICO CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: Strings.risico,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Foutief getoetste planaanpassing.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CONTEXT CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: Strings.context,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer er onvoldoende infra beschikbaar is om volgens plan te kunnen rijden, dient de wel beschikbare infra herverdeeld te worden. In overleg met de vervoerders wordt vastgesteld welke aanpassingen op het plan maakbaar en uitvoerbaar zijn.',
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
