import 'package:quiz_app/core/resources/List_onboarding.dart';
import 'package:quiz_app/core/resources/StringsName.dart';

class AnswerScreenController {

  List<bool> answers = [];
  late Map sstudentAnswer;

  void getStudentAnswer(Map studentAnswer) {
    this.sstudentAnswer = studentAnswer;
    compareAnswers();
  }

  void compareAnswers(){
    answers.clear();
    for(int i = 0;i<ConstValue.questionList.length;i++){
      bool ans = sstudentAnswer[StringsName.KlistCorrectAnswer][i]==ConstValue.questionList[i].correctAnswer;
      answers.add(ans);
    }
  }

  void printList() {
    print(sstudentAnswer);
  }

  int getCountCorrectAnswer(){
    int count = 0;
    for(bool i in answers){
      if(i==true){
        count++;
      }
    }
    return count;
  }
}
