import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _containerColor = Colors.green;
  final int resultScore;
  const Result({
    super.key,
    required this.resultScore,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          //-------------------------------------/
          color: resultScore > 40 ? Colors.green : Colors.red,
          //-------------------------------------/
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Text(
          "Your score is $resultScore you did it!",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
