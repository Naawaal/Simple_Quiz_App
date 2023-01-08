import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  String comment;

  final Function resetQuiz;
  Result({
    super.key,
    required this.resultScore,
    required this.resetQuiz,
    required this.comment,
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
              " $resultScore ",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 26),
            ),
            const SizedBox(height: 20),
            Text(
              comment,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 26,
              ),
            ),
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
