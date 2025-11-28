import 'dart:async';
import 'dart:js_interop';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiz_app/core/resources/List_onboarding.dart';
import 'package:quiz_app/core/resources/Routes.dart';

import '../../core/resources/StringsName.dart';

class QuizContoller{


  String _name = "";
  int groupValueIndex = -1;
  int countQuestion = 0;
  int questionNow = 0;
  int timeSecondNow = 0;
  bool animationStatues = true;
  List<int> listCorrectAnswer = [];
  late AnimationController animationController;
  double progressAnimationPercent = 0;
  Tween<double> tween = Tween(begin: 0.0,end: 1.0);
  late BuildContext _context;



  late StreamController<int> streamControllerGroupIndex;
  late Sink<int> inputDataGRoupValueIndex;
  late Stream<int> outputDataGRoupValueIndex;

  bool isNextActive = false;
  late StreamController<bool> streamControllerButtonStatus;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> outputDataButtonStatus;

  late StreamController<int> streamControllerTime;
  late Sink<int> inputDataTime;
  late Stream<int> outputDataTime;

  late StreamController<int> streamQuestionNextController;
  late Sink<int> inputQuestionNext;
  late Stream<int> outputQuestionNext;

  late StreamController<double> outputAnimationProgressController;
  late Sink<double> inputAnimationProgress;
  late Stream<double> outputAnimationProgress;

  late StreamController<String> streamControllerQuestionNow;
  late Sink<String> inputQuestionN0w;
  late Stream<String> outputQuestionNow;


  QuizContoller(SingleTickerProviderStateMixin vsync,BuildContext context) {
    _context = context;
    countQuestion = ConstValue.questionList.length;

    animationController = AnimationController(vsync: vsync,duration: Duration(seconds: 30)
    );

    streamControllerGroupIndex = StreamController();
    inputDataGRoupValueIndex = streamControllerGroupIndex.sink;
    outputDataGRoupValueIndex = streamControllerGroupIndex.stream.asBroadcastStream();
    inputDataGRoupValueIndex.add(groupValueIndex);

    streamControllerButtonStatus = StreamController();
    inputDataButtonStatus = streamControllerButtonStatus.sink;
    outputDataButtonStatus = streamControllerButtonStatus.stream.asBroadcastStream();
    inputDataButtonStatus.add(isNextActive);

    streamControllerTime = StreamController();
    inputDataTime = streamControllerTime.sink;
    outputDataTime = streamControllerTime.stream;
    inputDataTime.add(timeSecondNow);

    streamQuestionNextController = StreamController();
    inputQuestionNext = streamQuestionNextController.sink;
    outputQuestionNext = streamQuestionNextController.stream.asBroadcastStream();
    inputQuestionNext.add(questionNow);

    outputAnimationProgressController = StreamController();
    inputAnimationProgress = outputAnimationProgressController.sink;
    outputAnimationProgress = outputAnimationProgressController.stream.asBroadcastStream();
    inputAnimationProgress.add(progressAnimationPercent);

    streamControllerQuestionNow = StreamController();
    inputQuestionN0w = streamControllerQuestionNow.sink;
    outputQuestionNow = streamControllerQuestionNow.stream;

    makeCounter();

    inputQuestionN0w.add((
        questionNow + 1).toString() +
        "/" +
        countQuestion.toString());
  }
  void forwardAnimation(){
animationController.reset();
    animationController.forward();
    animationController.addListener((){
      progressAnimationPercent = tween.evaluate(animationController);
      inputDataTime.add((progressAnimationPercent * 30).toInt());
      inputAnimationProgress.add(progressAnimationPercent);

    }
    );
  }

//============================== restart Animation==================

void restartAnimation(){
    animationController.addStatusListener((status) {
if(status==AnimationStatus.completed) {
  nextQuestion();
}
    },);
}



  void onTapItemRadio(int index) {
    groupValueIndex = index;

    if(questionNow == listCorrectAnswer.length){
      listCorrectAnswer.add(groupValueIndex);
    }
    else{
      listCorrectAnswer[questionNow] = groupValueIndex;
    }
    for(int i in listCorrectAnswer ){
      print(i);
    }
    inputDataGRoupValueIndex.add(groupValueIndex);

    if (groupValueIndex != -1)
      isNextActive = true;
    else
      isNextActive = false;

    inputDataButtonStatus.add(isNextActive);
  }

  void makeCounter() {
    // for (int i = 0; i <= 30; i++) {
    //   Future.delayed(Duration(seconds: i), () {
    //     timeSecondNow = i;
    //     inputDataTime.add(timeSecondNow);
    //     if (i == 30) {
    //       nextQuestion();
    //     }
    //   });
    // }

    forwardAnimation();
inputDataTime.add((progressAnimationPercent * 30).toInt());
  }

void goToAnswerPage(){
Navigator.pushNamed(_context, RoutesName.KAnswerPage,arguments: {
  StringsName.KName: _name,
  StringsName.KlistCorrectAnswer: listCorrectAnswer
});
  }
  void AddName(String name){
    _name = name;
  }

  void nextQuestion() {

    if(questionNow == listCorrectAnswer.length){
      listCorrectAnswer.add(groupValueIndex);
    }
    else{
      listCorrectAnswer[questionNow] = groupValueIndex;
    }
    for(int i in listCorrectAnswer ){
      print(i);
    }
    groupValueIndex = -1;
    inputDataGRoupValueIndex.add(groupValueIndex);



    if (questionNow >= ConstValue.questionList.length - 1) {
      // animationStatues = false;
      inputAnimationProgress.add(progressAnimationPercent);
    goToAnswerPage();


      print("not increment");
    } else {
      questionNow++;
      // print(questionNow);
      print("increeeee");

      makeCounter();

    }
    inputQuestionNext.add(questionNow);
    inputQuestionN0w.add((
        questionNow + 1).toString() +
        "/" +
        countQuestion.toString());
  }

  onDispose() {
    inputDataGRoupValueIndex.close();
    streamControllerGroupIndex.close();

    inputDataTime.close();
    streamControllerTime.close();

    inputDataButtonStatus.close();
    streamControllerButtonStatus.close();

    inputQuestionNext.close();
    streamQuestionNextController.close();

    inputAnimationProgress.close();
    outputAnimationProgressController.close();

  }
}
