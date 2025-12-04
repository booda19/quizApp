import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Chat/chat.dart';

class Customnextbutton extends StatelessWidget {
  final VoidCallback? onPressed;
  const Customnextbutton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 50,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),

      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff164578),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'Next',
          style: GoogleFonts.katibeh(
            fontSize: 36,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
