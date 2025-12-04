import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('assets/images/splash.png'),
              fit: BoxFit.cover,
            ),
            Text('Seen by everyone', style: GoogleFonts.poppins().copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xff3B86FF),
            )),
          ],
        ),
      ),
    );
  }
}
