import 'package:clothes_app/pages/home/page/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),(){
Navigator.pushReplacement(mounted as BuildContext, MaterialPageRoute(builder: (context) => const Home(),));
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Runway",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 48,
              ),
            ),

            const SizedBox(height: 20),

            // Animation Part 👇
            TweenAnimationBuilder<Offset>(
              tween: Tween(begin: const Offset(-1, 0), end: Offset.zero),
              duration: const Duration(seconds: 2),
              curve: Curves.easeOut,
              builder: (context, offset, child) {
                return FractionalTranslation(
                  translation: offset,
                  child: child,
                );
              },
              child: Image.asset(
                "assets/logo/rectangle.png",
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
