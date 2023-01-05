import 'package:flutter/material.dart';
import 'package:simple_quiz_app/widgets/button.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your name?',
      'What is your age?',
      'What is your favorite color?',
      'What is your favorite food?',
      'What is your favorite animal?'
    ];
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  questions[questionIndex],
                  style: const TextStyle(fontSize: 20),
                ),
                ButtonWidget(
                  text: 'Next Question',
                  onPressed: answerQuestion,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
