import 'package:trdl_tool/all_imports.dart';

QuizBrain quizBrain = QuizBrain();

class ProQuiz extends StatefulWidget {
  @override
  _ProQuizState createState() => _ProQuizState();
}

class _ProQuizState extends State<ProQuiz> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        //TODO Step 4 Part A - show an alert using rFlutter_alert,

        //This is the code for the basic alert from the docs for rFlutter Alert:
        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        //Modified for our purposes:
        // Alert(
        //   context: context,
        //   title: 'Finished!',
        //   desc: 'You\'ve reached the end of the quiz.',
        // ).show();

        //TODO Step 4 Part C - reset the questionNumber,
        quizBrain.reset();

        //TODO Step 4 Part D - empty out the scoreKeeper.
        scoreKeeper = [];
      }

      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
      else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: ElevatedButton(
                  child: Icon(Icons.done),
                  onPressed: () {
                    //The user picked true.
                    checkAnswer(true);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: ElevatedButton(
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    //The user picked false.
                    checkAnswer(false);
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
