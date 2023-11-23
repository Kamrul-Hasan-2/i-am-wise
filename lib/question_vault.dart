// ignore_for_file: unused_field

import 'question.dart';

class QustionValt{
    int _questionNum = 0;
    final List<Question> _qustionSet = [
      Question(
          qus: 'Flutter can only develop mobile applications',
          img: "images/flutter.png",
          ans: false),
      Question(
          qus: 'Colombo is the capital of Sri Lanka',
          img: "images/colombo.jpeg",
          ans: true),
      Question(
          qus: 'Cox\'s Bazar is the longest sea beach in the world',
          img: "images/sea-beach.jpeg",
          ans: true),
    ];

    void nextQuestion(){
      if(_questionNum < _qustionSet.length-1){
        _questionNum++;
      }

    }
    String getQuestionTittle(){
      return _qustionSet[_questionNum].questionTitle;
    }
    String getImage(){
      return _qustionSet[_questionNum].images;
    }
    bool getAnswer(){
      return _qustionSet[_questionNum].answer;
    }

}



