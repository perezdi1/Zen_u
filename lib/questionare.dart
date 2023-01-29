import 'package:flutter/material.dart';

class QuestionnairePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('next'),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>QuestionnairePage()));
                },
              )
          ),
        ],
      ),
    );
  }
}


class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
});
}
class Option {
  final String text;
  final bool correct;

  const Option({
    required this.text,
    required this.correct,
});
}

final questions = [
  Question(text: 'How often have you been?',
    options: [const Option(text: '1 Time',correct: true),
      const Option(text: '2 Times', correct: true),
      const Option(text: '3 Times', correct: true),
      const Option(text: "3+ Times", correct: true)
    ]
  ),
  Question(text: 'How many hours a night have you been sleeping?',
  options: [const Option(text: '1-4 Hours', correct: true),
const Option(text: '5-6 Hours', correct: true),
const Option(text: '7-8 Hours', correct: true),
const Option(text: '8+ Hours', correct: true)
  ]
),
  Question(text: 'Have you ever feel like you zone out a lot and is not able to live in the moment? ',
options: [const Option(text: 'Yes', correct: true),
const Option(text: 'No', correct: true)]

),
Question(text: 'Have you not felt like your self or have you noticed signs in a decrease of self worthiness?',
options: [const Option(text: 'Yes',correct: true),
const Option(text: 'No', correct: true)
]),

Question(text: 'Has stress been heavily affecting you even on a daily basis?',
options: [const Option(text: 'Yes', correct: true),
const Option(text: 'No', correct: true)]
)];

  

