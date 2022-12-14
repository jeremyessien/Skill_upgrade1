import 'package:flutter/material.dart';
import 'package:skill_upgrade1/question.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;

  void answerChosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
              Questions(
                questions[_questionIndex],
              ),
              ElevatedButton(
                onPressed: answerChosen,
                child: const Text('Answer 1'),
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
