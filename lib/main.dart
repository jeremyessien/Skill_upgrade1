import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void answerChosen() {
    print("Correct");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite food?",
      "What's your favorite color?"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questions.elementAt(0),
              ),
              ElevatedButton(
                onPressed: answerChosen,
                child: const Text(
                  'Answer 1'
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: answerChosen, child: const Text('Answer 1')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: answerChosen, child: const Text('Answer 1')),
            ],
          ),
        ),
      ),
    );
  }
}
