import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:quiz_app/core/resources/Routes.dart';

class LOginSCreenController{
  String name = "";

  late GlobalKey<FormState> formKeyName;

  bool buttonIsActive = false;

  late StreamController<bool> streamControllerButtonStatus;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> outputDataButtonStatus;
  late TextEditingController controllerNameTExtField;

  LOginSCreenController(){
    formKeyName = GlobalKey();
    streamControllerButtonStatus = StreamController();
    controllerNameTExtField = TextEditingController();
    inputDataButtonStatus = streamControllerButtonStatus.sink;
    outputDataButtonStatus = streamControllerButtonStatus.stream;

    inputDataButtonStatus.add(buttonIsActive);

  }
  String? validateNAme(String? value){
    if(value!.isEmpty){
      return "Please enter your name";
    }
    else if(value.length<4){
      return "should be => 4";

    }
    else return null;
  }

  void onChangedTExtFormField(value){
    if (formKeyName.currentState!
        .validate()) {
      buttonIsActive = true;
  }
    else{
      buttonIsActive = false;
    }
inputDataButtonStatus.add(buttonIsActive);

}
void onDispose(){
  inputDataButtonStatus.close();
  streamControllerButtonStatus.close();
}
void navigateToQUizScreen(BuildContext context){
    Navigator.pushReplacementNamed(arguments: controllerNameTExtField.text,context, RoutesName.kQuizscreen);
}
}