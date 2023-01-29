import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';
import 'package:hackathon/questionare.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

  class _TutorialPageState extends State<TutorialPage>{
    @override
    Widget build(BuildContext context) {
      return Padding(
          padding: const EdgeInsets.all(10),
        child: ListView(
        children: <Widget>[
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Welcome to Zen-U!',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),

            ),
          )
          ),
            Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text('Continue'),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>QuestionnairePage()));
              },
            )
            )
      ]
      ));

    }

  }




