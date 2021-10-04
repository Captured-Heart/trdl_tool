import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trdl_tool/home_screen.dart';

class UitvoerenPlan extends StatelessWidget {
  const UitvoerenPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Uitvoeren Plan',
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
                              'Uitvoeren Plan',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Geplande Werkzaamheden',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Bijzonderheden Rijwegen',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Bijzonderheden Trein',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Bijzonderheden Trein',
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
