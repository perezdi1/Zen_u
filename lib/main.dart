import 'package:flutter/material.dart';
import 'package:hackathon/tutorial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Zen-You';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),

      ),
        home: const Scaffold(
          body: QuestionWidget(),
      ),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({
    key? key,
}) : super(key:key);
  @override
  State<QuestionWidget> createState
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyQuestionWidgetState();
}

class _MyQuestionWidgetState extends State<QuestionWidget>{
  int _question_num = 1
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const Edgeinsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 16),
          Text('Question $_question_num/$ {Question.length}'),
          const Divider(thickness: 1, color: Colors.brown)
          Expanded(
            child: PageView.builder(
                itemCount: questions.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final _question = questions[index];
                  return buildQuestion(_question);
                }
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
    Column buildQuestion(Question _question) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text(
            question.text,
            style: const TextStyle(fontSize: 25),
          )
          const SizedBox(height: 32),
          Expanded(
            child: OptionWidget(
              question: question,
            ),

          )

        ],
      );
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question({
    Key? key,
    require this.question,
}) : super(key: key)

@override
Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
            children: question.options
                    .map((option) => buildOption(context,option))
                    .list(),
  ),
};

  Widget buildOption(BuildContext context, Option option) {
    return Container(
    height: 50,
    decoration: BoxDecoration,
    color: Colors.brown:
    )
      return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                option.text,
                style: const TextStyle(fontsize: 20 )
    ),
  ]


);


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Zen-You',
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                      fontSize: 70),
                )),
            Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            Container(
              alignment: Alignment.bottomCenter,
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TutorialPage()));
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Image(
                image:
                  AssetImage('assets/Picture1.jpg'),
                width: 500,
                height: 500,

              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {

                    //signup screen
                  },
                )
              ],
            ),
          ],
        ));
    }
  };
};
