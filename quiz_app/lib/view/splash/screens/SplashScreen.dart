import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controller/Splash/SplashController.dart';
import 'package:quiz_app/core/resources/ColorManager.dart';
import 'package:quiz_app/core/resources/FontSize.dart';
import 'package:quiz_app/core/resources/StringsName.dart';

import '../widgets/CustomSplashButton.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kPrimarycolor,
      body: Center(
        child: Column(
          children: [
            Text(
              StringsName.kLogo,
              // style: TextStyle(),
              style: GoogleFonts.montserrat(
                  color: ColorManager.kwhite, fontSize: FontSize.klogoSize),
            ),
            Spacer(),
            Customsplashbutton(
              onPressed: () {
                SplashController.gOnBoardingPage(BuildContext, context);
              },
            ),
            SizedBox(
              height: FontSize.f45,
            )
          ],
        ),
      ),
    );
  }
}
