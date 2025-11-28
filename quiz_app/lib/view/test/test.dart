import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, // page background

      body: const Center(
        child: Text("Page Content"),
      ),

      // 👇 This stays at the bottom
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Left: Back
              Text(
                "Back",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff3D003E),
                ),
              ),

              Text(
                "Next",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3D003E),
                ),
              ),
              Text(
                "Next",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3D003E),
                ),
              ),
              Text(
                "Next",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3D003E),
                ),
              ),
              Text(
                "Next",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3D003E),
                ),
              ),
              Text(
                "Next",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3D003E),
                ),
              ),

              // Center: Dots
              // DotsIndicator(
              //   dotsCount: 3,
              //   position: 0,
              //   decorator: DotsDecorator(
              //     color: Colors.white54,
              //     activeColor: const Color(0xff3D003E),
              //     size: const Size.square(8),
              //     activeSize: const Size(18, 8),
              //     activeShape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //   ),
              // ),

              // Right: Next

              SmoothPageIndicator(
                  controller: PageController(initialPage: 5),  // PageController
                  count:  6,
                  effect:  WormEffect(),  // your preferred effect
                  onDotClicked: (index){
                  }
              ),

              Text(
                "Next",
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3D003E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
