import 'package:flutter/material.dart';
import 'Quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
Quizbrain quizbrain =new Quizbrain();

void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[900],
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: QuizApp(),
            ),
          )),
    );
  }
}

class QuizApp extends StatefulWidget {
  
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List <Icon> scorekeeper =[

  ];

  void checkans(bool userpickedans) {
    bool correctAnswer = quizbrain.getquestionAns();

    setState(() {

      if (quizbrain.isFinished() == true) {

        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();


        quizbrain.reset();


        scorekeeper = [];
      }


      else {
        if (userpickedans == correctAnswer) {
          scorekeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scorekeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizbrain.getquesno();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex:7,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                quizbrain.getquestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex:1,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                "TRUE",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkans(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                "FALSE",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkans(false);
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:scorekeeper,


        )
      ],
    );
  }
}
