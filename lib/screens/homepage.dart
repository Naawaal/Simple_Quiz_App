import 'package:flutter/material.dart';
import 'package:simple_quiz_app/widgets/answer.dart';
import 'package:simple_quiz_app/widgets/question.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  final questions = const [
    {
      'questionsText': 'What is your age?',
      'answers': ['0-10', '11-20', '21-30', '31-40']
    },
    {
      'questionsText': 'What is your favorite color?',
      'answers': ['Red', 'Blue', 'Green', 'Yellow']
    },
    {
      'questionsText': 'What is your favorite animal?',
      'answers': ['Dog', 'Cat', 'Bird', 'Fish']
    },
    {
      'questionsText': 'What is your favorite food?',
      'answers': ['Pizza', 'Burger', 'Pasta', 'Salad']
    },
    {
      'questionsText': 'What is your favorite drink?',
      'answers': ['Water', 'Juice', 'Soda', 'Beer']
    },
    {
      'questionsText': 'What is your favorite sport?',
      'answers': ['Football', 'Basketball', 'Tennis', 'Baseball']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Simple Quiz App',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: _questionIndex < questions.length
          ? Column(
              children: [
                Question(questions[_questionIndex]['questionsText'] as String),
                const SizedBox(height: 20),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )
          : Center(
              child: Container(
                child: const Text(
                  'You did it!',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
    );
  }
}
