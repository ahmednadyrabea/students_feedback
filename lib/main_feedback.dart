import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
//import 'package:quizzler/quizbrain.dart';
import 'quizbrain.dart';
import 'courses_list.dart';

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  void checkAnswer(int userPickAnswer){
//    int correctAnswers = quizBrain.getQuestionAnswer();
    setState(() {

      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          type: AlertType.success,
          title: "Finish",
          desc: "You Have Finished this course feedback",
          buttons: [
            DialogButton(
              child: Text(
                "Cancel",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) => My(dss:false,)));
                });
//              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => MyApp()));
              },
              width: 120,
            )
          ],
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
        setState(() {
          quizBrain.dis();
        });
      }
      else{
        if (userPickAnswer == 1) {
          scoreKeeper.add(Icon(
            Icons.sentiment_satisfied,
            color: Colors.green,
          ));
        } else if (userPickAnswer == 2){
          scoreKeeper.add(Icon(
            Icons.sentiment_neutral,
            color: Colors.amber,
          ));
        }
        else if (userPickAnswer == 3){
          scoreKeeper.add(Icon(
            Icons.sentiment_dissatisfied,
            color: Colors.deepOrangeAccent,
          ));
        }
        else if (userPickAnswer == 4){
          scoreKeeper.add(Icon(
            Icons.sentiment_very_dissatisfied,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }
  QuizBrain quizBrain = QuizBrain();
//  List<String> questions = ['You can lead a cow down stairs but not up stairs.',
//    'Approximately one quarter of human bones are in the feet.',
//    'A slug\'s blood is green.',];
//  List<bool> Answers = [false,true,true];


  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(child: Row(children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
//              textColor: Colors.white,
//              color: Colors.green,
                child: Image.asset('images/happy.png'),
                onPressed: () {
                  //The user picked true.
                  checkAnswer(1);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
//                textColor: Colors.white,
//                color: Colors.green,
                child: Image.asset('images/face.png'),

                onPressed: () {
                  //The user picked true.
                  checkAnswer(2);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
//                textColor: Colors.white,
//                color: Colors.green,
                child:  Image.asset('images/sad.png'),
                onPressed: () {
                  //The user picked true.
                  checkAnswer(3);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
//              color: Colors.red,
                child:  Image.asset('images/angry.png'),
                onPressed: () {
                  //The user picked false.
                  checkAnswer(4);
                },
              ),
            ),
          ),
        ],),),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/