import 'package:trdl_tool/all_imports.dart';

class ProQuiz extends StatefulWidget {
  const ProQuiz({Key? key}) : super(key: key);
  @override
  _ProQuizState createState() => _ProQuizState();
}

class Question {
  late String questionText;
  late bool questionAnswer;

  Question(this.questionText, this.questionAnswer);
}

class _ProQuizState extends State<ProQuiz> {
  List<Widget> scoreKeeper = [
    const Icon(
      Icons.arrow_forward,
    ),
  ];

  List<Question> questionBank = [
    Question('Een storingsmonteur mag pas aan een trein werken als de railinfracapaciteit met WECO aan hem beschikbaar is gesteld door de TRDL.', false),
    Question('Bij gladde sporen meld je treinnummer, exacte locatie en geconstateerd bij remmen/tractie of beide.', true),
    Question('Bij gedeeltelijke uitval spraakcommunicatie informeer je alleen de DVL.', false),
    Question('Het GEVI nummer is het onderste nummer op een gevaaretiket.', false),
    Question('Bij een groen sein mag een machinist altijd ten minste 80 km/u.', false),
    Question('Een Hotbox melding geeft type alarm, asnummer, rechter- of linkerzijde en spoor.', true),
    Question('Wissels vrijmaken mag als de LWB de verantwoordelijkheid van de sporen heeft overgedragen aan de TRDL.', false),
    Question('Inhoudelijke informatie over een grendel of vrijgave vindt je in de tekstuele BVS.', true),
    Question('Een wissel dat niet in de eindstand komt, kan nog steeds opdrachten aannemen.', true),
    Question('De machinist van een gestrande trein moet altijd de stroomafnemers laten zakken.', false),
    Question('Als TROTS uitvalt, wacht je twee minuten op een automatische herstart.', true),
    Question('Bij stilleggen treindienst laat je reizigerstreinen in het getroffen gebied stoppen langs het eerstvolgende perron.', true),
    Question('\'Begrepen\' is een correcte dienstuitdrukking.', false),
    Question('Het verdelingsbesluit bij een infrabeperking wordt genomen door de VLC.', false),
    Question('Een wissel met een hoekverhouding van 1:12 mag met 60 km/u worden bereden.', true),
  ];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = questionBank[questionNumber].questionAnswer;
    setState(() {
      if (isFinished() == true) {
        quizReset();
        scoreKeeper = [
          const Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
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

  int questionNumber = 0;

  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void quizReset() {
    questionNumber = 0;
  }

  void nextQuestion() {
    // var randomPicker = List<int>.generate(questionBank.length - 1, (i) => i + 1)
    //   ..shuffle();
    // int random1 = randomPicker.removeLast();
    // int random2 = randomPicker.removeLast();
    // assert(random1 != random2);

    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    } else {
      isFinished();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Expanded(
                flex: 5,
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
              Row(
                children: scoreKeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
