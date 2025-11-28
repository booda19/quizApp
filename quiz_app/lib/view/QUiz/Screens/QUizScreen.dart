import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controller/Quiz/QuizController.dart';
import 'package:quiz_app/view/QUiz/Widgets/CustomAppBar.dart';
import '../../../core/resources/StringsName.dart';
import '../../Login/Widgets/CustomLoginButton.dart';
import '../Widgets/CirclePercentIndicator_Quiez_Screen.dart';
import '../Widgets/CustomCardQuiezScreen.dart';
import '../Widgets/CustomListViewQuiezScreen.dart';

class Quizscreen extends StatefulWidget {
  const Quizscreen({
    super.key,
  });

  // final String option;

  @override
  State<Quizscreen> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen>
    with SingleTickerProviderStateMixin {
  @override
  late QuizContoller _quizContoller;

  void initState() {
    // TODO: implement initState
    super.initState();
    _quizContoller = QuizContoller(this, context);
    _quizContoller.forwardAnimation();
    _quizContoller.restartAnimation();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _quizContoller.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    _quizContoller.AddName(name);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAAppBar(
          textQuestionStream: _quizContoller.outputQuestionNow,
          onTap: () {
            Navigator.of(context).canPop();
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24, top: 9),
        child: Customloginbutton(
          onPressed: () {
            _quizContoller.nextQuestion();
          },
          isActiveoutputStream: _quizContoller.outputDataButtonStatus,
          text: StringsName.kNext,
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // center horizontally
              children: [
                const SizedBox(height: 88),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Customcardquiezscreen(
                      outputQuestionNow: _quizContoller.outputQuestionNext,
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: -50,
                      child: CirclepercentindicatorQuiezScreen(
                        outputStreamTime: _quizContoller.outputDataTime,
                        outputAnimationProgress:
                            _quizContoller.outputAnimationProgress,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                StreamBuilder(
                  stream: _quizContoller.outputQuestionNext,
                  builder: (context, snapshot) => CustomListViewQuiezScreen(
                    onTap: (indexValue) {
                      _quizContoller.onTapItemRadio(indexValue);
                    },
                    outputDataGroupValueRadio:
                        _quizContoller.outputDataGRoupValueIndex,
                    outputQuestionNext: _quizContoller.outputQuestionNext,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Object? a = ModalRoute.of(context)!.settings.arguments;
// print(a);
