import 'package:trdl_tool/all_imports.dart';

class Communicatie extends StatelessWidget {
  const Communicatie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'TRDLtool',
          style: GoogleFonts.questrial(
              textStyle: TextStyle(fontWeight: FontWeight.w700)),
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
                              'Communicatie',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 24.0,
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
                              Navigator.pushNamed(
                                  context, 'mondelingecommunicatie');
                            },
                            child: Text(
                              'Mondelinge Communicatie',
                              style: GoogleFonts.questrial(
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.bold)),
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
