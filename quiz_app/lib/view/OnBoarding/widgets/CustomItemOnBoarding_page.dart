import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/OnBoarding_Model/On_Boarding_model.dart';

import '../../../core/resources/AssetsManager.dart';

class CustomitemonboardingPage extends StatelessWidget {
  const CustomitemonboardingPage({super.key, required this.onBoardingModel});

  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 227,
                  height: 398,
                  image: AssetImage(onBoardingModel.image_onBoarding),
                ),
                const SizedBox(height: 30),
                Text(
                  onBoardingModel.onBoardingTitle,
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  onBoardingModel.onBoardingDesc,
                  style: GoogleFonts.montserrat(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
