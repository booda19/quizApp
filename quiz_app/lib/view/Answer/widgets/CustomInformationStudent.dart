import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custominformationstudent extends StatelessWidget {
  const Custominformationstudent(
      {super.key, required this.name, required this.grade});

  final String name;
  final String grade;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 15, right: 15, top: 17),
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: 383,
        // height: 229,
        child: Padding(
          padding: const EdgeInsets.all(19),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name: $name",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff473F97)),
              ),
              Text(
                grade,
                textAlign: TextAlign.center,
                style: GoogleFonts.baloo2(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff473F97)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
