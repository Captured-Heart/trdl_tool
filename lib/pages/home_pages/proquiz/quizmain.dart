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
    Question('Prince Harry is taller than Prince William', false),
    Question('The star sign Aquarius is represented by a tiger', true),
    Question('Meryl Streep has won two Academy Awards', false),
    Question('Marrakesh is the capital of Morocco', false),
    Question(
        'Idina Menzel sings \'let it go\' 20 times in \'Let It Go\' from Frozen',
        false),
    Question(
        'Waterloo has the greatest number of tube platforms in London', true),
    Question('M&M stands for Mars and Moordale', false),
    Question('Gin is typically included in a Long Island Iced Tea', true),
    Question('The unicorn is the national animal of Scotland', true),
    Question(
        'There are two parts of the body that can\t heal themselves', false),
    Question('Howard Donald is the oldest member of Take That', true),
    Question(
        'The Great Wall of China is longer than the distance between London and Beijing',
        true),
    Question('There are 219 episodes of Friends', false),
    Question(
        '\'A\' is the most common letter used in the English language', false),
    Question('A lion\'s roar can be heard up to eight kilometres away', true),
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
