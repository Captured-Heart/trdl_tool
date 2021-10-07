import 'package:trdl_tool/all_imports.dart';

class HomeIndex1 extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
          child: CircleAvatar(
            child: Icon(Icons.person),
          ),
        ),
        title: Text(
          'TRDLtool',
          style: GoogleFonts.questrial(
              textStyle: TextStyle(fontWeight: FontWeight.w700)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _auth.signOut();
              Navigator.pushNamed(context, 'login');
            },
            icon: Icon(Icons.logout),
          ),
        ],
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
          }),
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
                              'Achtergrondinformatie Treindienstleider',
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
                              'De Werkwijze Treindienstleider is online beschikbaar op SharePoint. Deze werkwijze is altijd actueel en wordt inhoudelijk beheerd door de staf Verkeersleiding, treindienstleiding i.s.m. Human Factors Verkeersleiding (HF VL).',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
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
                              'De achtergrondinformatie is onderdeel van de Werkwijze Treindienstleiding, samen met de documenten Vakmanschap en TRA (Taak Risico Analyse). De opbouw van de achtergrondinformatie volgt de opbouw van de nieuwe werkwijze.',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
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
                              'De TRDLtool is nog volop in ontwikkeling en krijgt regelmatig updates. Kom snel terug voor meer achtergrondinformatie.',
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
            ],
          ),
        ),
      ),
    );
  }
}
