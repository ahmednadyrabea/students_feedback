import 'package:flutter/cupertino.dart';

import 'questions.dart';
import 'courses_list.dart';
class QuizBrain {
  // ignore: non_constant_identifier_names
  int _questionNumber = 0;
  List<Questions> _questionBank = [
    Questions(q: 'Some cats are actually allergic to humans',),
    Questions(q: 'You can lead a cow down stairs but not up stairs.',),
    Questions(q: 'Approximately one quarter of human bones are in the feet.',),
    Questions(q: 'A slug\'s blood is green.',),
    Questions(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',),
    Questions(q: 'It is illegal to pee in the Ocean in Portugal.',),
    Questions(
      q: 'No piece of square dry paper can be folded in half more than 7 times.',
    ),
    Questions(
      q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
    ),
    Questions(
      q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
    ),
    Questions(
      q: 'The total surface area of two human lungs is approximately 70 square metres.',
    ),
    Questions(q: 'Google was originally called \"Backrub\".',),
    Questions(
      q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    ),
    Questions(
      q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  int getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  void dis() {
    subjectBox(isactivated: false,);
  }
}