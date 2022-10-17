import 'dart:async';

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
int accumulatedPoints = 0;
double doubleScorePercentage = 0;
String scorePercentage = '';
late Timer timer;

class ProQuizScreen extends StatefulWidget {
  const ProQuizScreen({Key? key}) : super(key: key);
  @override
  ProQuizScreenState createState() => ProQuizScreenState();
}

class ProQuizScreenState extends State<ProQuizScreen> {
  /*SET TIMER*/
  void startTimer() {
    timer = Timer.periodic(
      const Duration(
        seconds: 1,
      ),
      (Timer timer) {
        if (seconds == 0) {
          setState(() {
            timer.cancel();
            calculateScore();
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

  /*KILL TIMER*/
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  /*SCOREKEEPER LIST*/
  List<Widget> scoreKeeper = [
    const Icon(
      Icons.railway_alert,
    ),
  ];

  /*CHECK THE ANSWER, FILL THE SCOREKEEPER AND GO TO NEXQUESTION*/
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

  /*NEXT QUESTION IS FROM SHUFFLED QUESTIONBANK LIST, THEN ADDS +1*/
  void nextQuestion() {
    Random randomNumber = Random();
    questionNumber =
        randomNumber.nextInt(QuestionBank().questionBank.length - 1) + 1;
  }

  /*RESETS QUIZ, CANCELS TIMER, CREATES POPUP, RESETS VARIABLES TO STARTING POSITION*/
  void quizReset() {
    timer.cancel();
    lastTenSeconds = false;
    timerRunning = false;
    finishQuizPopup(context);
    seconds = 60;
    questionNumber = 0;
    firstPressToStartTimer = 0;
    scoreKeeper = [
      const Icon(
        Icons.railway_alert,
      ),
    ];
  }

  /*TAKE THIS SCORE TO THE POPUP*/
  String calculateScore() {
    accumulatedPoints = correctAmount - (wrongAmount * 2);
    if (accumulatedPoints <= 0 && accumulatedPoints <= 10) {
      return scorePercentage = 'Waardeloos';
    } else {
      doubleScorePercentage =
          (100 * correctAmount) / accumulatedPoints.toDouble();
      scorePercentage = doubleScorePercentage.toStringAsFixed(2);
      return scorePercentage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        /*PRESSING BACK ON PHONE SHOULD RESET QUIZ*/
        if (firstPressToStartTimer != 0) {
          quizReset();
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const AppBarText(title: 'TRDLtool'),
        ),
        body: Padding(
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
                      /*DEFINES THE LOOK OF THE TIMER*/
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
                          onPressed: () {
                            setState(() {
                              /*ONLY THE FIRST PRESS STARTS TIMER*/
                              if (firstPressToStartTimer == 0) {
                                timerRunning = true;
                                startTimer();
                                firstPressToStartTimer++;
                                nextQuestion();
                              } else {
                                /*NEW PRESSES ONLY CHECK ANSWER*/
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
                          ),
                          onPressed: () {
                            setState(() {
                              /*FIRST PRESS QUITS QUIZ*/
                              if (firstPressToStartTimer == 0) {
                                finishQuizPopup(context);
                              } else {
                                /*NEW PRESSES ONLY CHECK ANSWER*/
                                checkAnswer(false);
                              }
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

Widget countDownTimerRunning() {
  return Stack(
    fit: StackFit.expand,
    children: [
      /*TIMER LAST 10 SECONDS CHANGE COLOR TO RED*/
      lastTenSeconds
          ? const SpinKitDoubleBounce(
              color: Colors.red,
              size: 125.0,
            )
          : SpinKitDoubleBounce(
              color: greenMoneyColorsLight.primary,
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
