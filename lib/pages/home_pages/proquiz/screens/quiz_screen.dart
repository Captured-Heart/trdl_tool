import 'package:trdl_tool/all_imports.dart';

bool showSpinner = false;
bool timerRunning = false;
bool lastTenSeconds = false;
int questionNumber = 0;
int maxSeconds = 60;
int seconds = 60;
int firstPressToStartTimer = 0;
int correctAmount = 0;
int wrongAmount = 0;
late Timer timer;

class ProQuizScreen extends StatefulWidget {
  const ProQuizScreen({Key? key}) : super(key: key);
  @override
  _ProQuizScreenState createState() => _ProQuizScreenState();
}

class _ProQuizScreenState extends State<ProQuizScreen> {
  /*Every quiz needs a timer, right?*/
  void startTimer() {
    timer = Timer.periodic(
      const Duration(
        seconds: 1,
      ),
      (Timer timer) {
        if (seconds == 0) {
          setState(() {
            timer.cancel();
            quizReset();
          });
        } else {
          setState(() {
            if (seconds <= 10) {
              lastTenSeconds = true;
            }
            seconds--;
          });
        }
      },
    );
  }

  /*Cancels timer to preserve resources*/
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

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
      if (userPickedAnswer == correctAnswer) {
        correctAmount++;
        scoreKeeper.add(
          const Icon(
            Icons.thumb_up,
            color: Colors.green,
            size: 28.0,
          ),
        );
      } else {
        wrongAmount++;
        scoreKeeper.add(
          const Icon(
            Icons.thumb_down,
            color: Colors.red,
            size: 28.0,
          ),
        );
      }
      nextQuestion();
    });
  }

  /*Next question is from shuffled questionBank List, then adds +1*/
  void nextQuestion() {
    Random randomNumber = Random();
    questionNumber =
        randomNumber.nextInt(QuestionBank().questionBank.length - 1) + 1;
  }

  /*Resets quiz and empties scoreKeeper*/
  void quizReset() {
    timer.cancel();
    lastTenSeconds = false;
    timerRunning = false;
    seconds = 60;
    questionNumber = 0;
    firstPressToStartTimer = 0;
    scoreKeeper = [
      const Icon(
        Icons.mediation_outlined,
      ),
    ];
    //TODO: set correctAmount and wrongAmount to zero, without affecting popup!
    finishQuizPopup(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (firstPressToStartTimer != 0) {
          quizReset();
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.logout),
          //     onPressed: () async {
          //       setState(() {
          //         quizReset();
          //         showSpinner = true;
          //       });
          //       await _auth.signOut();
          //       Navigator.pushReplacementNamed(context, 'login');
          //       setState(() {
          //         showSpinner = false;
          //       });
          //     },
          //   ),
          // ],
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 125.0,
                        width: 125.0,
                        child: timerRunning
                            ? countDownTimerRunning()
                            : countDownTimerStopped(),
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
                                if (firstPressToStartTimer == 0) {
                                  timerRunning = true;
                                  startTimer();
                                  firstPressToStartTimer++;
                                  nextQuestion();
                                } else {
                                  checkAnswer(true);
                                }
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
      ),
    );
  }
}

Widget countDownTimerRunning() {
  return Stack(
    fit: StackFit.expand,
    children: [
      lastTenSeconds
          ? const SpinKitDoubleBounce(
              color: Colors.red,
              size: 125.0,
            )
          : const SpinKitDoubleBounce(
              color: Color(kDarkGreen),
              size: 125.0,
            ),
      CircularProgressIndicator(
        backgroundColor: Colors.red,
        value: seconds.toDouble() / maxSeconds.toDouble(),
        strokeWidth: 8.0,
      ),
      Center(
        child: Text(
          '$seconds',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

Widget countDownTimerStopped() {
  return Stack(
    fit: StackFit.expand,
    children: [
      CircularProgressIndicator(
        backgroundColor: Colors.red,
        value: seconds.toDouble() / maxSeconds.toDouble(),
        strokeWidth: 8.0,
      ),
      Center(
        child: Text(
          '$seconds',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
