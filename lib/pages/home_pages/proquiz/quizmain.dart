import 'package:trdl_tool/all_imports.dart';

class ProQuiz extends StatefulWidget {
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
    Icon(
      Icons.arrow_forward,
    ),
  ];

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
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    questionBank[questionNumber].questionText,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Feedback.forTap(context);
                            setState(() {
                              checkAnswer(true);
                            });
                          },
                          child: Text(
                            'True',
                            style: TextStyle(fontSize: 24.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: () {
                            Feedback.forTap(context);
                            setState(() {
                              checkAnswer(false);
                            });
                          },
                          child: Text(
                            'False',
                            style: TextStyle(fontSize: 24.0),
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
