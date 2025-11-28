import 'package:flutter/material.dart';
import 'package:quiz_app/core/resources/Routes.dart';


class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Montserrat"),
routes: RoutesManager.routes,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.kLoginScreen,
      // home: Quizscreen(),

      // home: Test(),
    );
  }
}
