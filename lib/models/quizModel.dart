import 'dart:math';

import 'package:flutter/material.dart';

class QuizModel extends ChangeNotifier {
  int _score = 0;
  int _currentQuestionIndex = -1;
  final List<Question> _questions = [
    Question('What is 1 + 1?', ['1', '2', '3', '4'], 1),
    Question('What is the capital of France?',
        ['London', 'Paris', 'Berlin', 'Madrid'], 1),
    Question('What is the largest mammal?',
        ['Elephant', 'Whale', 'Giraffe', 'Kangaroo'], 1),
    Question(
        'What is the currency of Japan?', ['Dollar', 'Euro', 'Yen', 'Won'], 2),
    Question('What is the largest continent?',
        ['Asia', 'Europe', 'North America', 'Africa'], 0),
  ];
  List<int> _questionOrder = [];

  int get score => _score;

  int get currentQuestionIndex => _currentQuestionIndex;

  List<Question> get questions => _questions;

  Question get currentQuestion =>
      _questions[_questionOrder[_currentQuestionIndex]];

  void startQuiz() {
    _score = 0;
    _currentQuestionIndex = -1;
    _questionOrder = List.generate(_questions.length, (index) => index)
      ..shuffle();
    nextQuestion();
  }

  void nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
      notifyListeners();
    } else {
      endQuiz();
    }
  }

  void answerQuestion(int answerIndex) {
    if (currentQuestion.correctAnswerIndex == answerIndex) {
      _score++;
    }
    nextQuestion();
  }

  void endQuiz() {
    _currentQuestionIndex = -1;
    notifyListeners();
  }
}

class Question {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  Question(this.question, this.answers, this.correctAnswerIndex);
}
