import 'package:trdl_tool/core/all_imports.dart';

class BeschadigdWissel extends StatelessWidget {
  const BeschadigdWissel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Beschadigd wissel',
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
                      TitleText(
                        title: 'Beschadigd wissel',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij een beschadigd wissel staak je het treinverkeer over het betrokken wissel.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Een wissel moet als beschadigd worden beschouwd als:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Het bij een ontsporing betrokken is geweest, of;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Als het een breuk of andere uiterlijke afwijking vertoont.',
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
                        text: 'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        text: 'Bij een beschadigd wissel is de veilige berijdbaarheid van het wissel niet meer gegarandeerd. Dat is niet altijd zichtbaar in Procesleiding.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De storingsmonteur kan de veilige berijdbaarheid ter plaatse vaststellen. De storingsmonteur bepaalt of en hoe je het betrokken wissel weer mag laten berijden.',
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
