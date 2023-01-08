import 'package:flutter/material.dart';
import 'package:simple_quiz_app/widgets/quiz.dart';
import 'package:simple_quiz_app/widgets/result.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  final _questions = const [
    {
      'questionsText': 'What is your age?',
      'answers': [
        {'text': '0-10', 'score': 15},
        {'text': '11-20', 'score': 10},
        {'text': '21-30', 'score': 10},
        {'text': '31-40', 'score': 5},
      ]
    },
    {
      'questionsText': 'What is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Green', 'score': 15},
        {'text': 'Yellow', 'score': 4},
      ]
    },
    {
      'questionsText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 8},
        {'text': 'Bird', 'score': 6},
        {'text': 'Fish', 'score': 15},
      ]
    },
    {
      'questionsText': 'What is your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Burger', 'score': 8},
        {'text': 'Pasta', 'score': 10},
        {'text': 'Salad', 'score': 4},
      ]
    },
    {
      'questionsText': 'What is your favorite drink?',
      'answers': [
        {'text': 'Water', 'score': 15},
        {'text': 'Coke', 'score': 8},
        {'text': 'Milk', 'score': 10},
        {'text': 'Juice', 'score': 12},
      ]
    },
    {
      'questionsText': 'What is your favorite sport?',
      'answers': [
        {'text': 'Football', 'score': 10},
        {'text': 'Basketball', 'score': 8},
        {'text': 'Baseball', 'score': 6},
        {'text': 'Tennis', 'score': 4},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  String comments() {
    if (_totalScore > 40) {
      return 'You are Good!';
    } else if (_totalScore > 50) {
      return 'Pretty Strange!';
    } else if (_totalScore > 60) {
      return 'You are ... Awesome?!';
    } else if (_totalScore > 70) {
      return 'You are so !';
    } else if (_totalScore > 80) {
      return 'You are  !';
    } else {
      return 'You !';
    }
  }

  Color _colors() {
    if (_totalScore > 40) {
      return Colors.green;
    } else if (_totalScore > 50) {
      return Colors.yellow;
    } else if (_totalScore > 60) {
      return Colors.orange;
    } else if (_totalScore > 70) {
      return Colors.red;
    } else if (_totalScore > 80) {
      return Colors.purple;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors(),
      appBar: AppBar(
        title: const Text('Simple Quiz App',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        backgroundColor: _colors(),
        elevation: 2,
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(
              resultScore: _totalScore,
              resetQuiz: _resetQuiz,
              comment: comments(),
            ),
    );
  }
}
