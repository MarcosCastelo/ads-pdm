import 'question.dart';
import 'answer.dart';


class QuizBrain {
  int _questionNumber = 0;
  int _corrects = 0;

  List<Question> _questionBank = [
     Question('Some cats are actually allergic to humans', Answer.True),
    Question('You can lead a cow down stairs but not up stairs.', Answer.False),
    Question('Approximately one quarter of human bones are in the feet.',
        Answer.Maybe),
    Question('A slug\'s blood is green.', Answer.True),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', Answer.True),
    Question('It is illegal to pee in the Ocean in Portugal.', Answer.True),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        Answer.False),
        
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        Answer.True),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        Answer.False),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        Answer.True),
    Question('Google was originally called \"Backrub\".', Answer.True),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        Answer.True),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        Answer.True),
 ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  Answer getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void addCorrect() {
    _corrects++;
  }

  void resetQuiz() {
    _questionNumber = 0;
    _corrects = 0;
  }

  double getPercent() {
    return (_corrects/_questionBank.length) * 100;
  }
}
