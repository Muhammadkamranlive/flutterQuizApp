import 'question.dart';
class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Question 1', true),
    Question('Question 2', false),
    Question('Question 3', true),
    Question('Question 4', true),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print(' true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
