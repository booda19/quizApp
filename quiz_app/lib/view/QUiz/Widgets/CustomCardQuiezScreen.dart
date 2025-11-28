import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/List_onboarding.dart';

class Customcardquiezscreen extends StatelessWidget {
  const Customcardquiezscreen({super.key, required this.outputQuestionNow});



  final Stream<int> outputQuestionNow;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: outputQuestionNow,
      builder: (context, snapshot) => Card(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 383,
          height: 229,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ConstValue.questionList[snapshot.data==null?0:snapshot.data!].question,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.baloo2(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
