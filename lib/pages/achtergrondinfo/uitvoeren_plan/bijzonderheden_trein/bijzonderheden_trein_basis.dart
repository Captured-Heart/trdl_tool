import 'package:trdl_tool/all_imports.dart';

final List<Image> elektrLocsList = [
  Image.asset(
    'assets/images/achtergrond/treinen/elektrische_locs/elektrLoc1.jpg',
  ),
  Image.asset(
    'assets/images/achtergrond/treinen/elektrische_locs/elektrLoc2.jpg',
  ),
  Image.asset(
    'assets/images/achtergrond/treinen/elektrische_locs/elektrLoc3.jpg',
  ),
];

const String treinenVanNS = 'https://ns.nl/over-ns/treinen-van-ns';
const String nlSpoorwegMaterieel = 'https://nl.wikipedia.org/wiki/Nederlands_spoorwegmaterieel';
const String goederenWagon = 'https://nl.wikipedia.org/wiki/Goederenwagon';

class BijzonderhedenTreinBasisAchtergrond extends StatelessWidget {
  const BijzonderhedenTreinBasisAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool'),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*CARD #1*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Bijzonderheden trein - basisinformatie',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'In Nederland is er heel wat rijdend materieel onderweg op het spoor. Dit materieel komt in vele soorten en maten, aangepast voor specifieke trajecten, reizigers of goederen. In dit deel van de achtergrondinformatievind je een overzicht van deze materieelsoorten.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Handig zijn ook de volgende webpagina\'s (werkende links worden nog toegevoegd):',
                            ),
                          ),
                        ],
                      ),
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
                      Row(
                        children: [
                          const SizedBoxW(),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                lauchNLSpoorwegMaterieel();
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/goederenTrein.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Elektrische locomotieven',
                            ),
                          ),
                        ],
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
                            4
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset(
                                            'assets/images/achtergrond/treinen/elektrische_locs/elektrLoc$i.jpg',
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
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Serie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Vervoerder',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Lengte',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Gewicht',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Max. snelheid',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '1250',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'EETC(ACTS)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '18m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '108 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '150 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '1600',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'DB Schenker, NSR, HTRS',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '17,5m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '84 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '180 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '1700',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'NSR',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '17,5m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '86 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '180 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '189',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'DB Schenker',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '19,5,',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '87 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '140 km/u',
                                ),
                              ),
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Diesel locomotieven',
                            ),
                          ),
                        ],
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
                            4
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset(
                                            'assets/images/achtergrond/treinen/diesel_locs/dieselLoc$i.jpg',
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
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Serie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Vervoerder',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Lengte',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Gewicht',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Max. snelheid',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '200',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Railion, NedTrain',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '7m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '21 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '60 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '204/BR203.1',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Spitzke, VolkerRail',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '14m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '64 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '100 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '400',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'NedTrain',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '9,4m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '40 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '70 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '600',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Railion, NedTrain, RRF, Strukton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '9,1m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '47 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '32 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '700',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'NedTrain',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '9,4m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '40 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '70 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '302200',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Eurailscout',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '14m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '72 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '106 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '6400',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'DB Schenker',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '14,4m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '80 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '120 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '6700',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'HTRS (ACTS)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '16,8m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '80 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '120 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'JT42CWR (class 66)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Captrain, CRB, ERS, HGK, HTRS, Rurtalbahn',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '20,1m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '129,6 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '120 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'G1206',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Captrain, ERS, HTRS, Rurtalbahn, Strukton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '14,7m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '90 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '100 km/u',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'G2000',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Captrain, HGK, HTRS, Rurtalbahn',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '17,4m',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '90 ton',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '140 km/u',
                                ),
                              ),
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Elektrische treinstellen',
                            ),
                          ),
                        ],
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
                            4
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset(
                                            'assets/images/achtergrond/treinen/elektrische_treinen/elektrTrein$i.jpg',
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
      ),
    );
  }

  void launchTreinenVanNS() async => await canLaunch(treinenVanNS) ? await launch(treinenVanNS) : throw 'Could not launch $treinenVanNS';

  void lauchNLSpoorwegMaterieel() async => await canLaunch(nlSpoorwegMaterieel) ? await launch(nlSpoorwegMaterieel) : throw 'Could not launch $nlSpoorwegMaterieel';

  void launchGoederenwagon() async => await canLaunch(goederenWagon) ? await launch(goederenWagon) : throw 'Could not launch $goederenWagon';
}
