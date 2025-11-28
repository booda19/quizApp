import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/resources/StringsName.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/resources/List_onboarding.dart';

class Custombottomnav extends StatelessWidget {
  const Custombottomnav(
      {super.key,
      required this.count,
      required this.ontapDotIndicator,
      required this.outputDatadotIndicator,
      required this.onTapNext, required this.outputDatadoTo_kStart, this.onTapSkip});

  final int count;

  final void Function(int index) ontapDotIndicator;

  final GestureTapCallback onTapNext;
  final GestureTapCallback? onTapSkip;

  final Stream<double> outputDatadotIndicator;
  final Stream<double> outputDatadoTo_kStart;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTapSkip,
            child: Text(
              StringsName.kSkip,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xff3D003E),
              ),
            ),
          ),
          StreamBuilder(
            stream: outputDatadotIndicator,
            builder: (context, snapshot) {
              final position = snapshot.data == null ? 0 : snapshot.data!;

              return SmoothIndicator(
                offset: position.toDouble(),
                count: count,
                effect: const ExpandingDotsEffect(
                  dotHeight: 7,
                  dotWidth: 7,
                  spacing: 6,
                  expansionFactor: 2,
                  activeDotColor: const Color(0xff3D003E),
                  dotColor: Colors.grey,
                ),
                size: Size(20, 20),
                onDotClicked: (position) {
                  ontapDotIndicator(position);
                },
              );
            },
          ),
          InkWell(
            onTap: onTapNext,
            child: StreamBuilder(
              builder: (context, snapshot) =>Text(
                snapshot.data==null?StringsName.kNext:snapshot.data==count-1?StringsName.kStart:StringsName.kNext,
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff3D003E),
                ),
              ),

              stream: outputDatadoTo_kStart,
            ),
          ),
        ],
      ),
    );
  }
}
