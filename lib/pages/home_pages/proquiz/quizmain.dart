import 'package:trdl_tool/all_imports.dart';

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
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
                    QuizBrain.questionBank[questionNumber].questionText,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        elevation: 6.0,
                      ),
                      onPressed: () {
                        setState(() {
                          QuizBrain.checkAnswer(true);
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
                        elevation: 6.0,
                      ),
                      onPressed: () {
                        setState(() {
                          QuizBrain.checkAnswer(false);
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
