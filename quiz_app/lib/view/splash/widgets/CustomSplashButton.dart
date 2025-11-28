import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/FontSize.dart';
import '../../../core/resources/StringsName.dart';

class Customsplashbutton extends StatelessWidget {
  const Customsplashbutton({super.key, this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(FontSize.f35),
            color: Colors.white),
        width: double.infinity,
        height: FontSize.f70,
        alignment: Alignment.center,
        child: Text(
          StringsName.kGetStarte,
          style: GoogleFonts.montserrat(
            fontSize: FontSize.f21,
            color: Color(0xff3D003E),
          ),
        ),
      ),
    );
  }
}
