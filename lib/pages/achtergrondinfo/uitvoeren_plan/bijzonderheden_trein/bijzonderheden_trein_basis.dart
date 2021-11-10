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
                              Text(
                                'Serie',
                              ),
                              Text(
                                'Vervoerder',
                              ),
                              Text(
                                'Lengte',
                              ),
                              Text(
                                'Gewicht',
                              ),
                              Text(
                                'Max. Snelheid',
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
