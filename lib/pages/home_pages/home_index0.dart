import 'package:trdl_tool/all_imports.dart';

class HomeIndex0 extends StatelessWidget {
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
        title: AppBarText(title: 'TRDLtool'),
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
                            child: TitleText(title: 'Verantwoordelijkheden Treindienstleider'),
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
                              'Als treindienstleider ben je verantwoordelijk voor het verdelen van de infracapaciteit in een aan jou toegewezen geografisch gebied. Dit doe je door het uitvoeren van een vooraf aangeleverd plan.',
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
                              'Wanneer er zich situaties voordoen die een aanpassing op dat plan noodzakelijk maken, doe je dit door gebruik te maken van vooraf bepaalde procedures in deze werkwijze.',
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
                              'Op momenten dat oplossingen ter plekke moeten worden bedacht, kan besloten worden een procedure niet geheel of anders uit te voeren. Het is het vakmanschap van de treindienstleider om te bepalen welke VKA\'s nodig zijn om de risico\'s te beheersen.',
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
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'uitvoerenplan');
                              },
                              child: Text(
                                'Uitvoeren',
                                style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'aanpassenplan');
                              },
                              child: Text(
                                'Aanpassen',
                                style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Incidenten',
                                style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
