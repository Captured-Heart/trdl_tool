import 'package:trdl_tool/all_imports.dart';

class OverigeIncidenten extends StatelessWidget {
  const OverigeIncidenten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'TRDLtool',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                              title: 'Overige Incidenten',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //NAVIGATION CARD
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
                              title: 'Ga snel naar',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NavButton(
                            buttontext: 'Gestrande Trein',
                            destination: 'gestrandetrein',
                          ),
                          const SizedBoxH(),
                          NavButton(
                            buttontext: 'Brand',
                            destination: 'brand',
                          ),
                          const SizedBoxH(),
                          NavButton(
                            buttontext: 'Weersomstandigheden',
                            destination: 'weersomstandigheden',
                          ),
                          const SizedBoxH(),
                          NavButton(
                            buttontext: 'Ontruimen Post',
                            destination: 'ontruimenpost',
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: const Text(
                              'Stroomstoring',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: const Text(
                              'Wissels Vrijmaken',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: const Text(
                              'STS Passage',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: const Text(
                              'Stilleggen Treindienst',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: const Text(
                              'Systeemstoring',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
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
