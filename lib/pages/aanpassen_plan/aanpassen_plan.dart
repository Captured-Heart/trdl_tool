import 'package:trdl_tool/all_imports.dart';

class AanpassenPlan extends StatelessWidget {
  const AanpassenPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarText(title: 'TRDLtool'),
      ),
      floatingActionButton: FabHome(),
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
                        children: [
                          Expanded(
                            child: TitleText(title: 'Aanpassen Plan'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Het actuele plan aanpassen als gevolg van een incident of extra capaciteitsaanvraag.',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Ga snel naar',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'stappenplanversperringen');
                            },
                            child: Text(
                              'Stappenplan Versperringen',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'incidenten');
                            },
                            child: Text(
                              'Incidenten',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'ongeplandwerk');
                            },
                            child: Text(
                              'Ongepland Werk',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'vertragingen');
                            },
                            child: Text(
                              'Vertragingen',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'orderacceptatie');
                            },
                            child: Text(
                              'Orderacceptatie',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
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
