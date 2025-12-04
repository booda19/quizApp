import 'package:customer_provider/Welcom_Page/Widgets/CustomNextButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Chat/chat.dart';
import '../Widgets/CustomSkipButton.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              Text(
                'Review',
                style: GoogleFonts.katibeh(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff164578),
                ),
              ),
              Text(
                'Get public feedback that boosts\nyour credibility',
                textAlign: TextAlign.center,
                style: GoogleFonts.katibeh(
                  fontSize: 27,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff3B86FF),
                ),
              ),
              //image container
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  // color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image(
                  image: const AssetImage('assets/images/preview_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(padding: EdgeInsets.all(16)),
              const SizedBox(height: 16),
//Next Button
Customnextbutton(onPressed: () {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Chat()));
}),
              const SizedBox(height: 16),


///Skip Button
Customskipbutton(onPressed: () {}),
              const SizedBox(height: 16),

            ],
          ),
        ),
      ),
    );;
  }
}
