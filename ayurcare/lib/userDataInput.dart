import 'package:flutter/material.dart';

class MCQPage extends StatefulWidget {
  @override
  _MCQPageState createState() => _MCQPageState();
}

class _MCQPageState extends State<MCQPage> {
  int currentQuestionIndex = 0;

  List<MCQQuestion> questions = [
    MCQQuestion(
      question: 'What is 2 + 2?',
      options: ['3', '4', '5'],
    ),
    MCQQuestion(
      question: 'What is the capital of France?',
      options: ['London', 'Berlin', 'Paris'],
    ),
    // Add more questions here
  ];

  String selectedOption = "";

  Map<String, int> optionCounts = {
    "A": 0,
    "B": 0,
    "C": 0,
  };

  void nextQuestion() {
    setState(() {
      currentQuestionIndex++;
      selectedOption = ""; // Reset selected option
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex >= questions.length) {
      return Scaffold(
        appBar: AppBar(
          title: Text('MCQ App'),
        ),
        body: Center(
          child: Text('All questions answered!'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('MCQ App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                'Question ${currentQuestionIndex + 1}: ${questions[currentQuestionIndex].question}'),
            buildOptions(questions[currentQuestionIndex].options),
            SizedBox(height: 20),
            Text('Selected Option: $selectedOption'),
            ElevatedButton(
              onPressed: () {
                nextQuestion();
              },
              child: Text('Next Question'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptions(List<String> options) {
    List<Widget> optionWidgets = [];
    for (int i = 0; i < options.length; i++) {
      String label = String.fromCharCode(65 + i); // A, B, C, ...
      String value = options[i];
      optionWidgets.add(
        Row(
          children: [
            Radio(
              value: value,
              groupValue: selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue!;
                  optionCounts[label]; // Update the count
                });
              },
            ),
            Text('$label) $value'),
          ],
        ),
      );
    }
    return Column(children: optionWidgets);
  }
}

class MCQQuestion {
  final String question;
  final List<String> options;

  MCQQuestion({required this.question, required this.options});
}
