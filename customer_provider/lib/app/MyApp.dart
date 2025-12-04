import 'package:customer_provider/Splash/Screen/splash.dart';
import 'package:customer_provider/Welcom_Page/Payment/payment.dart';
import 'package:customer_provider/Welcom_Page/Review/Review.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Customer Provider',
      home: Payment()

    );
  }
}
