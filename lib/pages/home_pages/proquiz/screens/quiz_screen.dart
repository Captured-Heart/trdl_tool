import 'package:trdl_tool/all_imports.dart';

class ProQuizScreen extends StatefulWidget {
  const ProQuizScreen({Key? key}) : super(key: key);
  @override
  _ProQuizScreenState createState() => _ProQuizScreenState();
}

class Question {
  late String questionText;
  late bool questionAnswer;

  Question(this.questionText, this.questionAnswer);
}

class _ProQuizScreenState extends State<ProQuizScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;

  /*questionNumber start*/
  int questionNumber = 0;

  /*List for Questions*/
  List<Question> questionBank = [
    Question(
      'Je hebt 1 minuut om zoveel mogelijk stellingen met goed of fout te beantwoorden. Zit je er klaar voor?',
      true,
    ),
    Question(
      'Een storingsmonteur mag pas aan een trein werken als de railinfracapaciteit met WECO aan hem beschikbaar is gesteld door de TRDL.',
      false,
    ),
    Question(
      'Bij gladde sporen meld je treinnummer, exacte locatie en geconstateerd bij remmen/tractie of beide.',
      true,
    ),
    Question(
      'Bij gedeeltelijke uitval spraakcommunicatie informeer je alleen de DVL.',
      false,
    ),
    Question(
      'Het GEVI nummer is het onderste nummer op een gevaaretiket.',
      false,
    ),
    Question(
      'Bij een groen sein mag een machinist altijd ten minste 80 km/u.',
      false,
    ),
    Question(
      'Een Hotbox melding geeft type alarm, asnummer, rechter- of linkerzijde en spoor.',
      true,
    ),
    Question(
      'Wissels vrijmaken mag als de LWB de verantwoordelijkheid van de sporen heeft overgedragen aan de TRDL.',
      false,
    ),
    Question(
      'Inhoudelijke informatie over een grendel of vrijgave vindt je in de tekstuele BVS.',
      true,
    ),
    Question(
      'Een wissel dat niet in de eindstand komt, kan nog steeds opdrachten aannemen.',
      true,
    ),
    Question(
      'De machinist van een gestrande trein moet altijd de stroomafnemers laten zakken.',
      false,
    ),
    Question(
      'Als TROTS uitvalt, wacht je twee minuten op een automatische herstart.',
      true,
    ),
    Question(
      'Bij stilleggen treindienst laat je reizigerstreinen in het getroffen gebied stoppen langs het eerstvolgende perron.',
      true,
    ),
    Question('\'Begrepen\' is een correcte dienstuitdrukking.', false),
    Question(
      'Het verdelingsbesluit bij een infrabeperking wordt genomen door de VLC.',
      false,
    ),
    Question(
      'Een wissel met een hoekverhouding van 1:12 mag met 60 km/u worden bereden.',
      true,
    ),
  ];

  /*List for scoreKeeper*/
  List<Widget> scoreKeeper = [
    const Icon(
      Icons.mediation_outlined,
    ),
  ];

  /*Check the answer, fill the scoreKeeper and go to next question*/
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = questionBank[questionNumber].questionAnswer;
    setState(() {
      if (isFinished() == true) {
        quizReset();
        scoreKeeper = [
          const Icon(
            Icons.mediation_outlined,
          ),
        ];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreKeeper.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        nextQuestion();
      }
    });
  }

  /*Next question is from shuffled questionBank List, then adds +1*/
  void nextQuestion() {
    if (questionNumber < questionBank.length - 1) {
      questionBank.shuffle();
      questionNumber++;
    } else {
      isFinished();
    }
  }

  /*Checks if user answered all questions, if so return true*/
  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  /*Resets quiz and empties scoreKeeper*/
  void quizReset() {
    questionNumber = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              setState(() {
                showSpinner = true;
              });
              await _auth.signOut();
              Navigator.pushReplacementNamed(context, 'login');
              setState(() {
                showSpinner = false;
              });
            },
          ),
        ],
        title: const AppBarText(title: 'TRDLtool'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'TIMER 1:00',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    questionBank[questionNumber].questionText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        16.0,
                        0.0,
                        16.0,
                        48.0,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 80.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                12.0,
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              checkAnswer(true);
                            });
                          },
                          child: const Icon(
                            Icons.check,
                            size: 48.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        16.0,
                        0.0,
                        16.0,
                        48.0,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 80.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                12.0,
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              checkAnswer(false);
                            });
                          },
                          child: const Icon(
                            Icons.close,
                            size: 48.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: scoreKeeper,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
