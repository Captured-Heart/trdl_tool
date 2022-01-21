import 'package:trdl_tool/core/all_imports.dart';

class GladSpoor extends StatelessWidget {
  const GladSpoor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Glad spoor',
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
                        title: 'Glad Spoor',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer je een melding krijgt van een glad spoor licht je de DVL.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij haltes op de vrije baan verander je de ‘Stops’ in ‘Doors’.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij een stop-/doorschakeling in bediend gebied (uitgezonderd kruisingsstations op enkelsporige baanvakken):',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Voeg je opgedeelde rijwegen met ‘D’ of ‘K’ activiteit samen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Verander je het ‘naar’-spoor van de aankomstregel in het ‘naar’-spoor van de vertrekregel;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Hef je de vertrekregel op;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Voeg je doorbediening toe aan de aankomstregel.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Twee uur na de laatste melding vraag je de machinisten van de twee eerstvolgende bijzonderheden_trein naar de toestand van de baan. Wanneer het spoor niet meer glad is, staak je bovenstaande maatregelen. Wanneer het spoor nog wel glad is, handhaaf je de maatregelen voor de komende twee uur.​​​',
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
                        text: 'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        text: 'Door verminderd contact tussen wiel en spoorstaaf, kunnen treinen moeite hebben met optrekken en remmen. De machinist kan zijn rijgedrag aanpassen wanneer hij hiervan op de hoogte is.',
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
