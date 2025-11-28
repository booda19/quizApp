import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/FontSize.dart';
import '../../../core/resources/StringsName.dart';

class Customloginbutton extends StatelessWidget {
  const Customloginbutton({super.key, required this.onPressed, required this.isActiveoutputStream, required this.text});

  final VoidCallback onPressed;
  final String text;

  final Stream<bool> isActiveoutputStream;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: isActiveoutputStream, builder: (context, snapshot) => MaterialButton(
      onPressed:snapshot.data == null ? null : snapshot.data == true?onPressed:null,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(FontSize.f35),
            color:snapshot.data == null ? Colors.grey : snapshot.data == true?Color(0xff473F97):Colors.grey,

        ),
        width: double.infinity,
        height: FontSize.f70,
        alignment: Alignment.center,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: FontSize.f21,
            color: Colors.white,
          ),
        ),
      ),
    ),);
  }
}
