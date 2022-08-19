import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
 String questionText;

  Questions(String question, {Key? key, this.questionText= ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: const TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}
