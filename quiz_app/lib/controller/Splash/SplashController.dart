import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/Routes.dart';

class SplashController{

  static void gOnBoardingPage(BuildContext,context){
    Navigator.pushReplacementNamed(context, RoutesName.kOnBoardingPage);
  }

}