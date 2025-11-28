import 'package:flutter/cupertino.dart';
import 'package:quiz_app/view/Answer/Screens/answersPage.dart';
import 'package:quiz_app/view/Login/Screens/LoginScreen.dart';
import 'package:quiz_app/view/OnBoarding/screens/OnBoardingScreen.dart';
import 'package:quiz_app/view/splash/screens/SplashScreen.dart';

import '../../view/QUiz/Screens/QUizScreen.dart';

class RoutesManager{

  static Map<String, WidgetBuilder>routes ={

    RoutesName.kSplashScreen : (context)=>Splashscreen(),
    RoutesName.kOnBoardingPage : (context)=>Onboardingscreen(),
    RoutesName.kLoginScreen : (context)=>Loginscreen(),
    RoutesName.kQuizscreen : (context) => Quizscreen(),
    RoutesName.KAnswerPage : (context) => Answerspage(),


};

}

class RoutesName {
  static String kSplashScreen = "kSplashScreen";
  static String kOnBoardingPage = "kOnBoardingPage";
  static String kLoginScreen = "kLoginScreen";
  static String kQuizscreen = "kQuizscreen";
  static String KAnswerPage = "KAnswerPage";
}

