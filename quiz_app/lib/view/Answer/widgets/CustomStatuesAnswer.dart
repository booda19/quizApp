import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customquestionnumber extends StatelessWidget {
  const Customquestionnumber({super.key, required this.order, required this.isCorrect});

  final int order;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: isCorrect==true?Colors.green:Colors.redAccent,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child:  Center(
        child: Text(
          "$order",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
