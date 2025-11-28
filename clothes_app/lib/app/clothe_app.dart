
import 'package:clothes_app/pages/category/page/category.dart';
import 'package:flutter/material.dart';

import '../pages/splash/splash.dart';

class ClotheApp extends StatelessWidget {
  const ClotheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
home: const Category(),
    );
  }
}
