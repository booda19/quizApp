import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/CustomNextButton.dart';
import '../Widgets/CustomSkipButton.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

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
                'Payment',
                style: GoogleFonts.katibeh(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff164578),
                ),
              ),
              Text(
                'Pay instantly and close deals \nfaster',
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
                  image: const AssetImage('assets/images/payment.png'),
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(padding: EdgeInsets.all(16)),
              const SizedBox(height: 16),

              Customnextbutton(onPressed: () {
              }),
              const SizedBox(height: 16),



              Customskipbutton(onPressed: () {}),
              const SizedBox(height: 16),

            ],
          ),
        ),
      ),
    );
  }
}




