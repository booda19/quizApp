class QuestionModel {
  late String _question;
  late List<dynamic> _listAnswer;
  late int _correctAnswer;

  QuestionModel (  {required String question,
  required List<dynamic> listAnswers,
  required int correctAnswer}) {
_question=question;
_listAnswer=listAnswers;
_correctAnswer=correctAnswer;
}

  String get question => _question;

  set question(String value) {
    _question = value;
  }

  List<dynamic> get listAnswer => _listAnswer;

  set listAnswer(List<dynamic> value) {
    _listAnswer = value;
  }

  int get correctAnswer => _correctAnswer;

  set correctAnswer(int value) {
    _correctAnswer = value;
  }
}
