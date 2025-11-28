import 'package:flutter/material.dart';
import '../view/splash/splash.dart';
import '../view/test.dart';

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),

    );
  }
}
