import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/questionare.dart';

class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Encouragement Generator'),
        ),
        body: EncouragementForm(),
      ),
    );
  }
}

class EncouragementForm extends StatefulWidget {
  @override
  _EncouragementFormState createState() => _EncouragementFormState();
}

class _EncouragementFormState extends State<EncouragementForm> {
  late String selectedIssue;
  List<String> _encouragement = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          value: selectedIssue,
          items: [
            DropdownMenuItem(
              child: Text('Anxiety'),
              value: 'anxiety',
            ),
            DropdownMenuItem(
              child: Text('Depression'),
              value: 'depression',
            ),
            DropdownMenuItem(
              child: Text('Stress'),
              value: 'stress',
            ),
          ],
          onChanged: (value) {
            setState(() {
              selectedIssue = value!;
              switch (selectedIssue) {
                case 'anxiety':
                  _encouragement = [
                    'You are capable and strong.',
                    'You have faced difficult times before and you will again.',
                    'Breathe and take things one step at a time.',
                  ];
                  break;
                case 'depression':
                  _encouragement = [
                    'You are not alone.',
                    'It is okay to ask for help.',
                    'There is hope for a brighter tomorrow.',
                  ];
                  break;
                case 'stress':
                  _encouragement = [
                    'Take a break and do something you enjoy.',
                    'Remember to prioritize self-care.',
                    'You got this.',
                  ];
                  break;
              }
            });
          },
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _encouragement.shuffle();
            });
          },
          child: Text('Generate Encouragement'),
        ),
        Text(_encouragement.isNotEmpty ? _encouragement.first : ''),
      ],
    );
  }}

