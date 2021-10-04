import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
          child: CircleAvatar(
            child: Icon(Icons.home),
          ),
        ),
        title: Text(
          'TRDLtool',
          style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.w700)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.train),
          label: 'Werkwijze',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: 'Achtergrond',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.sports_esports), label: 'ProQuiz'),
      ]),
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
                              'Verantwoordelijkheden Treindienstleider',
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
                              onPressed: () {},
                              child: Text(
                                'Werkwijze',
                                style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Achtergrondinfo',
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
              Text(
                'powered by',
                style: GoogleFonts.questrial(
                    textStyle: TextStyle(
                  fontSize: 8.0,
                )),
              ),
              Container(
                height: 30.0,
                width: 100.0,
                child: Image.asset('assets/images/plotsklappsLogo.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
