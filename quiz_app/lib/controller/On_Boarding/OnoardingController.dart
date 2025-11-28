import 'dart:async';
import 'package:quiz_app/core/resources/Routes.dart';
import 'package:flutter/cupertino.dart';

class OnBoardingController {
  double currentpospage = 0;

  late StreamController<double> streamController;
  late Sink<double> inputData;
  late Stream<double> outputData;
  late PageController onBoardingpagecontroller;


  late StreamController<double> streamControllerStartText;
  late Sink<double> inputDataStartText;
  late Stream<double> outputDataStartText;

  OnBoardingController() {

    streamController = StreamController();
    inputData = streamController.sink;
    outputData = streamController.stream;

    streamControllerStartText = StreamController();
    inputDataStartText = streamControllerStartText.sink;
    outputDataStartText = streamControllerStartText.stream;



    inputDataStartText.add(currentpospage);
    inputData.add(currentpospage);
    onBoardingpagecontroller =
        PageController(initialPage: currentpospage as int);
  }

  void onTapDotIndicator(double indexPosition) {
    currentpospage = indexPosition;
    inputData.add(currentpospage);
    onBoardingpagecontroller.animateToPage(currentpospage as int,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOutCubicEmphasized);
  }

  void onTapNext(context) {
    if (currentpospage == 2) {
      goToLoginPage(context);
    } else
      currentpospage++;



    onBoardingpagecontroller.animateToPage(currentpospage as int,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOutCubicEmphasized);

    inputData.add(currentpospage);
    inputDataStartText.add(currentpospage);
  }

  void goToLoginPage(context){
    Navigator.pushNamed(context, RoutesName.kLoginScreen);
  }

  void dispose() {
    // inputData.close();
    // streamController.close();
    // inputDataStartText.close();
    // streamControllerStartText.close();


    inputData.close();
    streamController.close();
    inputDataStartText.close();
    streamControllerStartText.close();
    onBoardingpagecontroller.dispose();
  }
}
