import 'package:trdl_tool/all_imports.dart';

final Uri treinenVanNS =
    Uri.parse('https://ns.nl/over-ns/bijzonderheden_trein-van-ns');
final Uri nlSpoorwegMaterieel =
    Uri.parse('https://nl.wikipedia.org/wiki/Nederlands_spoorwegmaterieel');
final Uri goederenWagon =
    Uri.parse('https://nl.wikipedia.org/wiki/Goederenwagon');

final List<Image> elektrLocsList = [
  Image.asset(
    'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/elektrische_locs/elektrLoc1.jpg',
  ),
  Image.asset(
    'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/elektrische_locs/elektrLoc2.jpg',
  ),
  Image.asset(
    'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/elektrische_locs/elektrLoc3.jpg',
  ),
];

enum WhereToGoFromAIBijzonderhedenTrein {
  home_screen,
  ww_bijzonderheden_trein_main,
  ai_vervoersregeling,
  ai_onjuiste_detectie,
}

class AIBijzonderhedenTrein extends StatelessWidget {
  const AIBijzonderhedenTrein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIBijzonderhedenTrein>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIBijzonderhedenTrein result) {
              if (result == WhereToGoFromAIBijzonderhedenTrein.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIBijzonderhedenTrein
                      .ww_bijzonderheden_trein_main) {
                Navigator.pushNamed(context, 'ww_bijzonderheden_trein_main');
              } else if (result ==
                  WhereToGoFromAIBijzonderhedenTrein.ai_vervoersregeling) {
                Navigator.pushNamed(context, 'ai_vervoersregeling');
              } else if (result ==
                  WhereToGoFromAIBijzonderhedenTrein.ai_onjuiste_detectie) {
                Navigator.pushNamed(context, 'ai_onjuiste_detectie');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIBijzonderhedenTrein>>[
              const PopupMenuItem<WhereToGoFromAIBijzonderhedenTrein>(
                value: WhereToGoFromAIBijzonderhedenTrein.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBijzonderhedenTrein>(
                value: WhereToGoFromAIBijzonderhedenTrein
                    .ww_bijzonderheden_trein_main,
                child: MenuItemContent(
                  icon: Icons.train,
                  text: 'WW Bijzonderheden Trein',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBijzonderhedenTrein>(
                value: WhereToGoFromAIBijzonderhedenTrein.ai_vervoersregeling,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Vervoersregeling',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBijzonderhedenTrein>(
                value: WhereToGoFromAIBijzonderhedenTrein.ai_onjuiste_detectie,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Onjuiste Detectie',
                ),
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
                  children: [
                    const TitleText(
                      title: 'Bijzonderheden trein - basisinformatie',
                    ),
                    const SizedBoxH(),
                    const BodyText(
                      indents: 0,
                      text:
                          'In Nederland is er heel wat rijdend materieel onderweg op het spoor. Dit materieel komt in vele soorten en maten, aangepast voor specifieke trajecten, reizigers of goederen. In dit deel van de achtergrondinformatievind je een overzicht van deze materieelsoorten.',
                    ),
                    const SizedBoxH(),
                    const BodyText(
                      indents: 0,
                      text:
                          'Handig zijn ook de volgende webpagina\'s (werkende links worden nog toegevoegd):',
                    ),
                    const SizedBoxH(),
                    const SizedBoxH(),
                    Row(
                      children: [
                        const SizedBoxW(),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              launchTreinenVanNS();
                            },
                            child: const Text(
                              '- Treinen van NS',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBoxH(),
                    const SizedBoxH(),
                    Row(
                      children: [
                        const SizedBoxW(),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              launchNLSpoorwegMaterieel();
                            },
                            child: const Text(
                              '- NL Spoorwegmaterieel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBoxH(),
                    const SizedBoxH(),
                    Row(
                      children: [
                        const SizedBoxW(),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              launchGoederenwagon();
                            },
                            child: const Text(
                              '- Goederenwagons Wiki',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBoxH(),
                    const SizedBoxH(),
                    const InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/goederenTrein.png',
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #2*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const SubTitleText(
                      subtitle: 'Elektrische locomotieven',
                    ),
                    const SizedBoxH(),
                    Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInOutBack,
                          enlargeCenterPage: true,
                        ),
                        items: [1, 2, 3, 4].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Image.asset(
                                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/elektrische_locs/elektrLoc$i.jpg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Table(
                      border: TableBorder.all(),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: const [
                        TableRow(
                          children: [
                            TableTextBold(text: 'Serie'),
                            TableTextBold(text: 'Vervoerder'),
                            TableTextBold(text: 'Lengte'),
                            TableTextBold(text: 'Gewicht'),
                            TableTextBold(text: 'Max. snelheid'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '1250'),
                            TableText(text: 'EETC(ACTS)'),
                            TableText(text: '18m'),
                            TableText(text: '108 ton'),
                            TableText(text: '150 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '1600'),
                            TableText(text: 'DB Schenker, NSR, HTRS'),
                            TableText(text: '17,5m'),
                            TableText(text: '84 ton'),
                            TableText(text: '180 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '1700'),
                            TableText(text: 'NSR'),
                            TableText(text: '17,5m'),
                            TableText(text: '86 ton'),
                            TableText(text: '180 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '189'),
                            TableText(text: 'DB Schenker'),
                            TableText(text: '19,5m'),
                            TableText(text: '87 ton'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #3*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const SubTitleText(
                      subtitle: 'Diesel locomotieven',
                    ),
                    const SizedBoxH(),
                    Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInOutBack,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          1,
                          2,
                          3,
                          4,
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Image.asset(
                                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/diesel_locs/dieselLoc$i.jpg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Table(
                      border: TableBorder.all(),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: const [
                        TableRow(
                          children: [
                            TableTextBold(text: 'Serie'),
                            TableTextBold(text: 'Vervoerder'),
                            TableTextBold(text: 'Lengte'),
                            TableTextBold(text: 'Gewicht'),
                            TableTextBold(text: 'Max. snelheid'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '200'),
                            TableText(text: 'Railion, NedTrain'),
                            TableText(text: '7m'),
                            TableText(text: '21 ton'),
                            TableText(text: '60 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '204/BR203.1'),
                            TableText(text: 'Spitzke, VolkerRail'),
                            TableText(text: '14m'),
                            TableText(text: '64 ton'),
                            TableText(text: '100 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '400'),
                            TableText(text: 'NedTrain'),
                            TableText(text: '9,4m'),
                            TableText(text: '40 ton'),
                            TableText(text: '70 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '600'),
                            TableText(text: 'Railion, NedTrain, RRF, Strukton'),
                            TableText(text: '9,1m'),
                            TableText(text: '47 ton'),
                            TableText(text: '32 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '700'),
                            TableText(text: 'NedTrain'),
                            TableText(text: '9,4m'),
                            TableText(text: '40 ton'),
                            TableText(text: '70 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '302200'),
                            TableText(text: 'Eurailscout'),
                            TableText(text: '14m'),
                            TableText(text: '72 ton'),
                            TableText(text: '106 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '6400'),
                            TableText(text: 'DB Schenker'),
                            TableText(text: '14,4m'),
                            TableText(text: '80 ton'),
                            TableText(text: '120 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: '6700'),
                            TableText(text: 'HTRS (ACTS)'),
                            TableText(text: '16,8m'),
                            TableText(text: '80 ton'),
                            TableText(text: '120 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'JT42CWR (class66)'),
                            TableText(
                                text:
                                    'Captrain, CRB, ERS, HGK, HTRS, Rurtalbahn'),
                            TableText(text: '20,1m'),
                            TableText(text: '129,6 ton'),
                            TableText(text: '120 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'G1206'),
                            TableText(
                                text:
                                    'Captrain, ERS, HTRS, Rurtalbahn, Strukton'),
                            TableText(text: '14,7m'),
                            TableText(text: '90 ton'),
                            TableText(text: '100 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'G2000'),
                            TableText(text: 'Captrain, HGK, HTRS, Rurtalbahn'),
                            TableText(text: '17,4m'),
                            TableText(text: '90 ton'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #4*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const SubTitleText(
                      subtitle: 'Elektrische treinstellen',
                    ),
                    const SizedBoxH(),
                    Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInOutBack,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          1,
                          2,
                          3,
                          4,
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Image.asset(
                                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/elektrische_treinen/elektrTrein$i.jpg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Table(
                      border: TableBorder.all(),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: const [
                        TableRow(
                          children: [
                            TableTextBold(text: 'Serie'),
                            TableTextBold(text: 'Vervoerder'),
                            TableTextBold(text: 'Lengte'),
                            TableTextBold(text: 'Gewicht'),
                            TableTextBold(text: 'Max. snelheid'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'SGM'),
                            TableText(text: 'NSR'),
                            TableText(text: '52,2m\n78,7m'),
                            TableText(text: '106 ton\n142 ton'),
                            TableText(text: '120 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'ICM'),
                            TableText(text: 'NSR'),
                            TableText(text: '80,6m\n107,1m'),
                            TableText(text: '144 ton\n192 ton'),
                            TableText(text: '160 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'DDAR'),
                            TableText(text: 'NSR'),
                            TableText(text: '26,5m\n21m'),
                            TableText(text: '45 ton\n77 ton'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'VIRM'),
                            TableText(text: 'NSR'),
                            TableText(text: '81m\n107,5m\n108,5m\n162m'),
                            TableText(
                                text:
                                    '183,4 ton\n234 ton\n236,8 ton\n352,3 ton'),
                            TableText(text: '160 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'Thalys'),
                            TableText(text: 'NS HiSpeed'),
                            TableText(text: '200m'),
                            TableText(text: '383 ton'),
                            TableText(text: '320 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'ICE'),
                            TableText(text: 'NS HiSpeed'),
                            TableText(text: '200,8m'),
                            TableText(text: '435 ton'),
                            TableText(text: '220 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'Protos'),
                            TableText(text: 'Connexxion'),
                            TableText(text: '54,4m'),
                            TableText(text: '108 ton'),
                            TableText(text: '160 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'GTW (1)'),
                            TableText(text: 'Arriva'),
                            TableText(text: '41m\n56m'),
                            TableText(text: '64,5 ton\n83 ton'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'GTW (2)'),
                            TableText(text: 'Veolia'),
                            TableText(text: '41m\n56m'),
                            TableText(text: '68 ton\n87 ton'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #5*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const SubTitleText(
                      subtitle: 'Diesel treinstellen',
                    ),
                    const SizedBoxH(),
                    Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInOutBack,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          1,
                          2,
                          3,
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Image.asset(
                                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/diesel_treinen/dieselTrein$i.jpg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Table(
                      border: TableBorder.all(),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: const [
                        TableRow(
                          children: [
                            TableTextBold(text: 'Serie'),
                            TableTextBold(text: 'Vervoerder'),
                            TableTextBold(text: 'Lengte'),
                            TableTextBold(text: 'Gewicht'),
                            TableTextBold(text: 'Max. snelheid'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'DM \'90'),
                            TableText(text: 'Syntus'),
                            TableText(text: '52,3m'),
                            TableText(text: '95,2 ton'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'LINT 41'),
                            TableText(text: 'Syntus'),
                            TableText(text: '41,8m'),
                            TableText(text: '63 ton'),
                            TableText(text: '120 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'GTW'),
                            TableText(text: 'Arriva, Veolia'),
                            TableText(text: '41m'),
                            TableText(text: '68 ton'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #6*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const SubTitleText(
                      subtitle: 'Rijtuigen',
                    ),
                    const SizedBoxH(),
                    Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInOutBack,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          1,
                          2,
                          3,
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Image.asset(
                                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/rijtuigen/rijtuigen$i.jpg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Table(
                      border: TableBorder.all(),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: const [
                        TableRow(
                          children: [
                            TableTextBold(text: 'Serie'),
                            TableTextBold(text: 'Vervoerder'),
                            TableTextBold(text: 'Lengte'),
                            TableTextBold(text: 'Gewicht'),
                            TableTextBold(text: 'Max. snelheid'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'ICR-1/2/3'),
                            TableText(text: 'NSR'),
                            TableText(text: '26,4m'),
                            TableText(text: '41 ton'),
                            TableText(text: '160 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'ICR-3'),
                            TableText(text: 'NS HiSpeed'),
                            TableText(text: '26,4m'),
                            TableText(text: '41 ton'),
                            TableText(text: '160 km/u'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableText(text: 'DDM-2/3'),
                            TableText(text: 'NSR'),
                            TableText(text: '26m'),
                            TableText(text: '41 ton'),
                            TableText(text: '140 km/u'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #7*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const SubTitleText(
                      subtitle: 'Onderhoudsmachines',
                    ),
                    const SizedBoxH(),
                    Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInOutBack,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          1,
                          2,
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Image.asset(
                                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/onderhouds_machines/onderhoudsMachine$i.jpg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /*CARD #8*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const SubTitleText(
                      subtitle: 'Railwegvoertuigen',
                    ),
                    const SizedBoxH(),
                    Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeInOutBack,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          1,
                          2,
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Image.asset(
                                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/basis_informatie/railweg_voertuigen/railwegVoertuig$i.jpg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
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

  void launchTreinenVanNS() async {
    if (!await launchUrl(treinenVanNS)) {
      throw 'Could not launch $treinenVanNS';
    }
  }

  void launchNLSpoorwegMaterieel() async {
    if (!await launchUrl(nlSpoorwegMaterieel)) {
      throw 'Could not launch $nlSpoorwegMaterieel';
    }
  }

  void launchGoederenwagon() async {
    if (!await launchUrl(goederenWagon)) {
      throw 'Could not launch $goederenWagon';
    }
  }
}
