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


  

