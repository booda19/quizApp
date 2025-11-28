import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/ColorManager.dart';

class CustomAAppBar extends StatelessWidget {
  const CustomAAppBar({super.key, required this.textQuestionStream, required this.onTap});


  final GestureTapCallback onTap;
  final Stream<String> textQuestionStream;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 140,
      leading: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            children: [
              const Icon(
                size: 17,
                Icons.arrow_back_ios_sharp,
                color: ColorManager.kPrimarycolor,
              ),
              Text(
                "kPrevious",
                style: GoogleFonts.baloo2(
                    color: ColorManager.kPrimarycolor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),


      //

      title: StreamBuilder(stream: textQuestionStream, builder: (context, snapshot) => Text(
        snapshot.data==null?"":snapshot.data!,
        style: GoogleFonts.baloo2(fontSize: 18, fontWeight: FontWeight.w600),
      ),),

      centerTitle: true,
      backgroundColor: const Color(0xffEFF0F3),
    );
  }

  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

}
