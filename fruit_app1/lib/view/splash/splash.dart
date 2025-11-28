import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/Screens/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
  Future.delayed(Duration(seconds: 1),(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Home()),
    );  });
    return Scaffold(

body: Center(
  child: Text("Grapper",
  style: GoogleFonts.balooDa2(
    fontWeight: FontWeight.w400,
    fontSize: 48,
    color: Color(0xff0CA201),
  ),
  ),
),

    );
  }
}
