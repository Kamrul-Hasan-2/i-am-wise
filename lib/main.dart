// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:i_am_wise/question_vault.dart';

void main() => runApp(WiseApp());

class WiseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuestionPage(),
          ),
        ),
      ),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  QuestionPageState createState() => QuestionPageState();
}

class QuestionPageState extends State<QuestionPage> {
  List<Widget> iconList= [];

  QustionValt qustionValt = QustionValt();

  // List<String> question=[
  //   'Flutter can only develop mobile applications.',
  //   'Colombo is the capital of Sri Lanka.',
  //   'Cox\'s Bazar is the longest sea beach in the world.',
  //
  // ];
  //
  // List<String> images=[
  //   "images/flutter.png",
  //   "images/colombo.jpeg",
  //   "images/sea-beach.jpeg"
  // ];
  //
  // List<bool> answer = [
  //   false,
  //   true,
  //   false,
  // ];

  int currentQuestion = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qustionValt.qustionSet[currentQuestion].questionTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Card(
                color: Colors.white,
                shadowColor: Colors.grey,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                          qustionValt.qustionSet[currentQuestion].images,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.

                bool correctAnswer = qustionValt.qustionSet[currentQuestion].answer;

                if(correctAnswer ==  true){
                  print("right");
                }
                else{
                  print("Wrong");
                }

                setState(() {
                  currentQuestion++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                bool correctAnswer = qustionValt.qustionSet[currentQuestion].answer;

                if(correctAnswer ==  false){
                  print("right");
                }
                else{
                  print("Wrong");
                }

                setState(() {
                  currentQuestion++;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: iconList,
          ),
        )
      ],
    );
  }
}
