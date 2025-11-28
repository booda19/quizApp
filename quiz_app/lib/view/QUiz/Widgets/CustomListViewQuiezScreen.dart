import 'package:flutter/cupertino.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:quiz_app/core/resources/List_onboarding.dart';

import 'CustomItemRadia.dart';

class CustomListViewQuiezScreen extends StatelessWidget {
  const CustomListViewQuiezScreen(
      {super.key,
      // required this.itemCount,
      // required this.option,
      required this.outputDataGroupValueRadio,
      required this.onTap, required this.outputQuestionNext});

  // final int itemCount;
  // final List<dynamic> option;

  final Stream<int> outputQuestionNext;
  final Stream<int> outputDataGroupValueRadio;
  final void Function(int indexValue) onTap;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder2<int,int>(
streams: StreamTuple2(outputQuestionNext, outputDataGroupValueRadio),

      builder: (context, snapshots) => ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => Customitemradia(
            isSelected: snapshots.snapshot2.data == null
                ? false
                : snapshots.snapshot2.data == index
                ? true
                : false,


            option: ConstValue.questionList[snapshots.snapshot1.data==null?0:snapshots.snapshot1.data!].listAnswer[index],
            onTap: () {
              onTap(index);
            },
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 9,
          ),
          itemCount: ConstValue.questionList[snapshots.snapshot1.data==null?0:snapshots.snapshot1.data!].listAnswer.length),
    );
  }
}
