import 'package:trdl_tool/core/all_imports.dart';

class Roestvorming extends StatelessWidget {
  const Roestvorming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Roestvorming',
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
                        title: 'Roestvorming op geïsoleerde sporen',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer de norm voor roestvorming overschreden is, voorkom je rijweginstelling naar de betrokken infra en pas je de procedure roestrijden toe:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Leg de wissels in de rijweg vast;\n\n- Stel tegengestelde rijwegen uit;\n\n- Geef voor de overweg(en) in de rijweg een aanwijzing OVW af;\n\n- Stel een rijweg in over het betreffende spoor met geel knipper;\n\n- Volg de trein op het scherm;\n\n- Laat de MCN zich binnen melden.',
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
                        text: 'Vuil en roest verminderen de kwaliteit van het wiel-rail contact. Om deze kwaliteit op voldoende niveau te handhaven moet het spoor regelmatig worden bereden. Het regelmatig berijden met het doel om de kwaliteit van de treindetectie op niveau te houden wordt roestrijden genoemd.',
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
