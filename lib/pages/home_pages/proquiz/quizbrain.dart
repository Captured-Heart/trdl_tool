import 'package:trdl_tool/all_imports.dart';

class Question {
  late String questionText;
  late bool questionAnswer;

  Question(this.questionText, this.questionAnswer);
}

class QuizBrain {
  List<Widget> scoreKeeper = [
    Icon(
      Icons.arrow_forward,
    ),
  ];

  int _questionNumber = 0;

  List<Question> questionBank = [
    Question('Prince Harry is taller than Prince William', false),
    Question('The star sign Aquarius is represented by a tiger', true),
    Question('Meryl Streep has won two Academy Awards', false),
    Question('Marrakesh is the capital of Morocco', false),
    Question('Idina Menzel sings \'let it go\' 20 times in \'Let It Go\' from Frozen', false),
    Question('Waterloo has the greatest number of tube platforms in London', true),
    Question('M&M stands for Mars and Moordale', false),
    Question('Gin is typically included in a Long Island Iced Tea', true),
    Question('The unicorn is the national animal of Scotland', true),
    Question('There are two parts of the body that can\t heal themselves', false),
    Question('Howard Donald is the oldest member of Take That', true),
    Question('The Great Wall of China is longer than the distance between London and Beijing', true),
    Question('There are 219 episodes of Friends', false),
    Question('\'A\' is the most common letter used in the English language', false),
    Question('A lion\'s roar can be heard up to eight kilometres away', true),
  ];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = questionBank[questionNumber].questionAnswer;
    setState(() {
      if (isFinished() == true) {
        Alert(
          context: context,
          type: AlertType.success,
          title: "GOOD JOB!",
          desc: "You\'ve reached the end of the quiz!",
          buttons: [
            DialogButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
            ),
          ],
        ).show();
        quizReset();
        scoreKeeper = [
          Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
          ),
        ];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        nextQuestion();
      }
    });
  }

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
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    } else {
      isFinished();
    }
  }
}
