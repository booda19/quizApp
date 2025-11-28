import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/ColorManager.dart';

class Customitemradia extends StatelessWidget {
  const Customitemradia({super.key, required this.option, required this.onTap, this.isSelected = false});

  final String option;
  final GestureTapCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        alignment: Alignment.centerLeft,
        width: 383,
        height: 53,
        decoration: BoxDecoration(
            color: isSelected == true?ColorManager.kPrimarycolor.withOpacity(.7):Colors.grey, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option,
              style: GoogleFonts.baloo2(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: ColorManager.kPrimarycolor),
            ),
            isSelected==true ? Icon(Icons.check_circle_rounded):Icon(Icons.radio_button_unchecked_outlined)

          ],
        ),
      ),
    );
  }
}
