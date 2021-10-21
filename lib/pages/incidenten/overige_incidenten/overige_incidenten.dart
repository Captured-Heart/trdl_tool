import 'package:trdl_tool/all_imports.dart';

class OverigeIncidenten extends StatelessWidget {
  const OverigeIncidenten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

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
                          ElevatedButton(
                            onPressed: () {
                              //TODO
                            },
                            child: Text(
                              'Gestrande Trein',
                              style: GoogleFonts.questrial(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Brand',
                              style: GoogleFonts.questrial(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Weersomstandigheden',
                              style: GoogleFonts.questrial(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Ontruimen Post',
                              style: GoogleFonts.questrial(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Stroomstoring',
                              style: GoogleFonts.questrial(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Wissels Vrijmaken',
                              style: GoogleFonts.questrial(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'STS Passage',
                              style: GoogleFonts.questrial(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Stilleggen Treindienst',
                              style: GoogleFonts.questrial(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          const SizedBoxH(),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Systeemstoring',
                              style: GoogleFonts.questrial(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
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
