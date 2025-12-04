import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customskipbutton extends StatelessWidget {
  final VoidCallback? onPressed;
  const Customskipbutton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 50,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),

      child: ElevatedButton(
        onPressed: onPressed  ,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xff164578),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Color(0xff164578), width: 2),
          ),
        ),
        child: Text(
          'Skip',
          style: GoogleFonts.katibeh(
            fontSize: 36,
            fontWeight: FontWeight.normal,
            color: Color(0xff164578),
          ),
        ),
      ),
    );
  }
}
