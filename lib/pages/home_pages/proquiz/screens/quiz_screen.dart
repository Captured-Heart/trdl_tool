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
  int questionNumber = 0;
  static const maxSeconds = 60;
  int seconds = maxSeconds;

  /*List for scoreKeeper*/
  List<Widget> scoreKeeper = [
    const Icon(
      Icons.mediation_outlined,
    ),
  ];

  /*Check the answer, fill the scoreKeeper and go to next question*/
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer =
        QuestionBank().questionBank[questionNumber].questionAnswer;
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
    if (questionNumber < QuestionBank().questionBank.length - 1) {
      QuestionBank().questionBank.shuffle();
      questionNumber++;
    } else {
      isFinished();
    }
  }

  /*Checks if user answered all questions, if so return true*/
  bool isFinished() {
    if (questionNumber >= QuestionBank().questionBank.length - 1) {
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
                        '60',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 48.0,
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
                    QuestionBank().questionBank[questionNumber].questionText,
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
