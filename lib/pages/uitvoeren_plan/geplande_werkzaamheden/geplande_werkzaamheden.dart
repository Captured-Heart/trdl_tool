import 'package:trdl_tool/all_imports.dart';

class GeplandeWerkzaamheden extends StatelessWidget {
  const GeplandeWerkzaamheden({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TRDLtool',
          style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.w700)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        },
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
                        children: [
                          Expanded(
                            child: Text(
                              'Geplande Werkzaamheden',
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
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Dit zijn vooraf geplande werkzaamheden die zijn vastgelegd in een Werkplek Beveiligings Instructie (WBI/WECO).',
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
                              Navigator.pushNamed(context, 'aanvangwerkzaamheden');
                            },
                            child: Text(
                              'Aanvang Werkzaamheden',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'controlerenwbi');
                            },
                            child: Text(
                              'Controleren WBI',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'foutenindewbi');
                            },
                            child: Text(
                              'Fouten in de WBI',
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
