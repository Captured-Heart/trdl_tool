import '/all_imports.dart';

enum WhereToGoFromAISeinenBasis1 {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_beveiliging_main,
  // ignore: constant_identifier_names
  ai_beveiliging_basis1,
  // ignore: constant_identifier_names
  ai_beveiliging_basis2,
}

//TODO: Toevoegen externe link naar https://www.seinenspel.nl

class AISeinenBasis1 extends StatelessWidget {
  const AISeinenBasis1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAISeinenBasis1>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAISeinenBasis1 result) async {
              if (result == WhereToGoFromAISeinenBasis1.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAISeinenBasis1.ai_beveiliging_main) {
                await Navigator.pushNamed(context, 'ai_beveiliging_main');
              } else if (result ==
                  WhereToGoFromAISeinenBasis1.ai_beveiliging_basis1) {
                await Navigator.pushNamed(context, 'ai_beveiliging_basis1');
              } else if (result ==
                  WhereToGoFromAISeinenBasis1.ai_beveiliging_basis2) {
                await Navigator.pushNamed(context, 'ai_beveiliging_basis2');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAISeinenBasis1>>[
              const PopupMenuItem<WhereToGoFromAISeinenBasis1>(
                value: WhereToGoFromAISeinenBasis1.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(title: 'Seinen Basisinformatie 1'),
                    SizedBoxH(),
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
                          "- Rood: betekent 'Stop'. Voorbijrijden is niet toegestaan;\n\n- Geel: Voorbijrijden toegestaan, afremmen tot 40 km/u en rekenen op stop;\n\n- Groen: Voorbijrijden toegestaan met de plaatselijk geldende maximum snelheid;\n\n- Wit: Voorbijrijden toegestaan onder met name genoemde voorwaarden. Dit is een door een bedieningshandeling uitgeschakeld sein dat geen opdracht, toestemming of beveiligingsgarantie geeft.",
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'Volgorde van seinbeelden',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: 'Het huidige snelheids-seinstelsel 1954 geeft:',
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
                          "De seinbeelden volgen elkaar zo op, dat de MCN de opdracht van een seinbeeld kan opvolgen. Het seinbeeld 'snelheid begrenzen' wordt op een zodanige afstand gegeven, dat een verlaging van de snelheid tijdig kan zijn uitgevoerd. Tijdig betekent dat de beschikbare remweg voldoende is om een opgelegde lagere snelheid te bereiken.\n\nDoor toepassing van cijferbakken en knipperende lampen kan een lichtsein nog meer seinbeelden tonen. Kijk voor een uitgebreid overzicht van lichtseinen en seinbeelden in het seinenboek.",
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <InsertImage>[
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/ai_seinen_basis1.png',
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
