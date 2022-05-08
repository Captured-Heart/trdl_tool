import 'package:trdl_tool/all_imports.dart';

class AISeinenBasis extends StatelessWidget {
  const AISeinenBasis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Seinen - basisinformatie',
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
                    SubTitleText(
                      subtitle: 'Seinstelsel',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Het gehele spoorwegnet van Nederland is opgedeeld in blokken. Een blok is een afgebakend stuk spoor dat alleen door een trein mag worden bereden met inachtneming van de veiligheidsvoorwaarden.\n\nAan het begin van elk blok staat een lichtsein. Dit lichtsein geeft aan de MCN door met welke snelheid bij dit lichtsein veilig mag passeren.',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Plaats van de seinen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De seinen bevinden zich rechts naast of boven het spoor waarvoor zij gelden. Een uitzondering hierop vormen seinen:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          '- Voor het linkerspoor, op een baanvak met twee sporen;\n\n- Die door de plaatselijke omstandigheden niet rechts kunnen staan. Een pijl kan aangeven voor welk spoor het sein geldt.',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Geldigheid van de seinen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Alle seinen gelden in principe voor treinen en rangeerdelen. Uitzonderingen zijn altijd bij het betrokken sein vermeld.',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Verlagen en verhogen van de snelheid',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Voor het verlagen of verhogen van de snelheid geldt, dat:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          '- Een snelheidsverlaging moet worden ingezet als het eerste voertuig het sein passeert dat een snelheidsverlaging opdraagt;\n\n- Een snelheidsverhoging pas mag worden uitgevoerd als het laatste voertuig het sein dat een snelheidsverhoging toestaat, helemaal is gepasseerd.',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Betekenis van de lichtseinen',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Aan het begin van ieder blok staat een lichtsein, dat een viertal kleuren kan tonen:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          '- Rood: betekent \'Stop\'. Voorbijrijden is niet toegestaan;\n\n- Geel: Voorbijrijden toegestaan, afremmen tot 40 km/u en rekenen op stop;\n\n- Groen: Voorbijrijden toegestaan met de plaatselijk geldende maximum snelheid;\n\n- Wit: Voorbijrijden toegestaan onder met name genoemde voorwaarden. Dit is een door een bedieningshandeling uitgeschakeld sein dat geen opdracht, toestemming of beveiligingsgarantie geeft.',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Volgorde van seinbeelden',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Het huidige snelheids-seinstelsel 1954 geeft:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          '- Toestemming om met een bepaalde snelheid te rijden;\n\n- Opdracht om de snelheid te begrenzen.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De seinbeelden volgen elkaar zo op, dat de MCN de opdracht van een seinbeeld kan opvolgen. Het seinbeeld \'snelheid begrenzen\' wordt op een zodanige afstand gegeven, dat een verlaging van de snelheid tijdig kan zijn uitgevoerd. Tijdig betekent dat de beschikbare remweg voldoende is om een opgelegde lagere snelheid te bereiken.\n\nDoor toepassing van cijferbakken en knipperende lampen kan een lichtsein nog meer seinbeelden tonen. Kijk voor een uitgebreid overzicht van lichtseinen en seinbeelden in het seinenboek.',
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
                      title: 'Ga snel naar',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        NavButton(
                          buttontext: 'Beveiliging',
                          destination: 'ai_incidenten_beveiliging_main',
                        ),
                        NavButton(
                          buttontext: 'Beveiliging - Basis 1',
                          destination: 'ai_incidenten_beveiliging_basis1',
                        ),
                        NavButton(
                          buttontext: 'Beveiliging - Basis 2',
                          destination: 'ai_incidenten_beveiliging_basis2',
                        ),
                      ],
                    ),
                    const SizedBoxH(),
                  ],
                ),
              ),
            ),
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    InsertImage(image: 'assets/images/achtergrond_info/incidenten/ai_seinen_basis1.png'),
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
