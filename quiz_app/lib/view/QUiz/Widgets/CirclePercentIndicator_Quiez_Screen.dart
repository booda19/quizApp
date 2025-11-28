import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../core/resources/ColorManager.dart';

class CirclepercentindicatorQuiezScreen extends StatelessWidget {
  const CirclepercentindicatorQuiezScreen({
    super.key,
    required this.outputStreamTime, required this.outputAnimationProgress,
  });

  // final String text;
  final Stream<double> outputAnimationProgress;
  final Stream<int> outputStreamTime;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder2(
      streams: StreamTuple2(outputAnimationProgress, outputStreamTime),
      builder: (context, snapshots) => CircularPercentIndicator(
          // animation: snapshots.snapshot1.data==null?true:snapshots.snapshot1.data!,
          reverse: true,
          restartAnimation: true,
          radius: 40.0,
          backgroundColor: ColorManager.kPrimarycolor.withOpacity(.38),
          animationDuration: 10000,
          lineWidth: 5.0,
          percent: snapshots.snapshot1.data==null?0:snapshots.snapshot1.data!,
          center: Text(
            snapshots.snapshot2.data == null ? "0" : snapshots.snapshot2.data.toString(),
            style:
                GoogleFonts.baloo2(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          progressColor: ColorManager.kPrimarycolor),
    );
  }
}

// Text(
// "30%",
// style: GoogleFonts.baloo2(
// fontSize: 25, fontWeight: FontWeight.w600),
// ),
