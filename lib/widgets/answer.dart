import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answerText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
        ));
  }
}
