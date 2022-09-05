import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIDienstovergave {
  home_screen,
  ww_dienstovergave,
}

class AIDienstovergave extends StatelessWidget {
  const AIDienstovergave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIDienstovergave>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIDienstovergave result) {
              if (result == WhereToGoFromAIDienstovergave.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIDienstovergave.ww_dienstovergave) {
                Navigator.pushNamed(context, 'ww_dienstovergave');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIDienstovergave>>[
              PopupMenuItem<WhereToGoFromAIDienstovergave>(
                value: WhereToGoFromAIDienstovergave.home_screen,
                child: MenuItemContent(icon: Icons.home, text: 'Home',),
              ),
              PopupMenuItem<WhereToGoFromAIDienstovergave>(
                value: WhereToGoFromAIDienstovergave.ww_dienstovergave,
                child: MenuItemContent(icon: Icons.train, text: 'WW Dienstovergave',),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*CARD #1*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    TitleText(title: 'Dienstovergave'),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Telkens als de dienstdoende TRDL zijn dienst overdraagt aan een andere TRDL, vindt er officieel een dienstovergave plaats. Hierbij wordt het dienstovergaveformulier gebruikt.\n\nDe dienstovergave vindt plaats bij:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- In dienst komen;\n\n- Uit dienst gaan;\n\n- Tijdelijke aflossing.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De overdracht zorgt er voor dat de TRDL die jouw dienst overneemt volledig op de hoogte is van de actuele situatie van het bediengebied. Zo voorkom je dat er onveilige situaties ontstaan. Je draagt daarom altijd persoonlijk de dienst over.\n\nDienstovergaveformulier Treindienstleider is het officiële veiligheidsdocument dat gebruikt wordt voor de overdracht. Omdat het een veiligheidsdocument is, moet altijd de tijd plus de handtekeningen van de beide betrokken TRDL genoteerd worden als de overgave plaatsvindt.\n\nOp het dienstovergaveformulier staan minimaal de volgende onderwerpen:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Nog van kracht zijnde WBI/Weco;\n\n- Van kracht geworden nieuwe of gewijzigde regelgeving;\n\n- Beperkingen in het gebruik van bedienings- en signaleringsapparatuur;\n\n- Beperkingen van het gebruik van de railinfrastructuur;\n\n - Sporen (in de beveiliging) die langer dan 24 uur niet zijn bereden;\n\n- Overige bijzonderheden.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je stelt je altijd op de hoogte van de inhoud en ondertekent de overdracht als je alle informatie hebt begrepen en voldoende beheerst om de dienst op de werkplek over te nemen.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/dienstovergave/dienstovergave_formulier.png',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'In- en omloggen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'In de procesleiding werkverdeling heeft iedere TRDL een eigen account om in te loggen op de werkplekken waarvoor hij bevoegd is.\n\nDoor het in- of omloggen wordt in het systeem geregistreerd dat een andere TRDL vanaf dat moment verantwoordelijk is voor de werkplek. Zo is achteraf altijd te herleiden wie er op welk moment verantwoordelijk was voor dat specifieke bediengebied.',
                    ),
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
