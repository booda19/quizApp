import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Customstatuesanswer extends StatelessWidget {
  const Customstatuesanswer({super.key, required this.isCorrect, required this.question, required this.answer, required this.correctAnswer, });

final bool isCorrect;
final String question;
  final String answer;

  final String correctAnswer;


  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isCorrect==true?Colors.green:Colors.redAccent,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              question,
              textAlign: TextAlign.center,
              style: GoogleFonts.baloo2(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff473F97),
              ),
            ),
            Divider(),
            const SizedBox(height: 12),

            // 🔹 Small container with icon + text
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.blueAccent, width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min, // keeps it small
                children: [
                  Icon(isCorrect==true?Icons.check_circle_sharp:Icons.clear_outlined,

                     color:Colors.blueAccent,
                      size: 20),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                        textAlign: TextAlign.center,

                        answer,
                        style: GoogleFonts.baloo2(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600,
                            fontSize: 18

                        )
                    ),
                  ),

                ],
              ),
            ),
SizedBox(height:20,),
            if(isCorrect==false)
            Container(

              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.blueAccent, width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min, // keeps it small
                children: [

                  Icon(Icons.check_circle_sharp,

                      color:Colors.blueAccent,
                      size: 20),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                        textAlign: TextAlign.center,

                        correctAnswer,
                        style: GoogleFonts.baloo2(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600,
                            fontSize: 18

                        )
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
