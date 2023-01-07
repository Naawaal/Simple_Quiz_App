import 'package:flutter/material.dart';
import 'package:simple_quiz_app/widgets/answer.dart';

class Result extends StatelessWidget {
  final _containerColor = Colors.green;
  final int resultScore;
  final Function resetQuiz;
  const Result({
    super.key,
    required this.resultScore,
    required this.resetQuiz,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          //------------- Changing container Background color when score is greater than 40 ------------------------/
          color: resultScore > 40 ? Colors.green : Colors.red,
          //-------------------------------------/
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          children: [
            Text(
              "Your score is $resultScore you did it!",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 26),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => resetQuiz(),
              child: const Text("Restart Quiz",
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
