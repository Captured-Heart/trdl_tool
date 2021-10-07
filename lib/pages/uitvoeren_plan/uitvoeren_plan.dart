import 'package:trdl_tool/all_imports.dart';

class UitvoerenPlan extends StatelessWidget {
  const UitvoerenPlan({Key? key}) : super(key: key);

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
                            child: TitleText(title: 'Uitvoeren Plan'),
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
                              'De treindienstleider voert het actuele plan uit en stelt infra ter beschikking volgens vooraf gemaakte afspraken.',
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
                              Navigator.pushNamed(context, 'geplandewerkzaamheden');
                            },
                            child: Text(
                              'Geplande Werkzaamheden',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'bijzonderhedenrijwegen');
                            },
                            child: Text(
                              'Bijzonderheden Rijwegen',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'bijzonderhedentrein');
                            },
                            child: Text(
                              'Bijzonderheden Trein',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'communicatie');
                            },
                            child: Text(
                              'Communicatie',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'ncbg');
                            },
                            child: Text(
                              'NCBG',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'dienstovergave');
                            },
                            child: Text(
                              'Dienstovergave',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
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
