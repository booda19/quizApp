import 'package:flutter/material.dart';
import 'package:quiz_app/controller/Answer/AnswerScreenController.dart';
import 'package:quiz_app/core/resources/ColorManager.dart';
import 'package:quiz_app/core/resources/List_onboarding.dart';
import 'package:quiz_app/core/resources/StringsName.dart';
import '../widgets/CustomInformationStudent.dart';
import '../widgets/CustomQuestionNumber.dart';
import '../widgets/CustomStatuesAnswer.dart';

class Answerspage extends StatefulWidget {
  const Answerspage({super.key});

  @override
  State<Answerspage> createState() => _AnswerspageState();
}

class _AnswerspageState extends State<Answerspage> {
  late AnswerScreenController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnswerScreenController();
  }

  @override
  Widget build(BuildContext context) {
    Map studentAnswer = ModalRoute.of(context)!.settings.arguments as Map;

    controller.getStudentAnswer(studentAnswer);

    return Scaffold(
      body: Container(
        color: ColorManager.kPrimarycolor,
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
//             ElevatedButton(
//                 onPressed: () {
// controller.compareAnswers();
//
// controller.printList();
//                   print('sstudentAnswer: ${controller.sstudentAnswer}');
//                   print('sstudentAnswer[0]: ${controller.sstudentAnswer.isNotEmpty ? controller.sstudentAnswer[0] : "EMPTY"}');
//                   print('sstudentAnswer[0] type: ${controller.sstudentAnswer.isNotEmpty ? controller.sstudentAnswer[0].runtimeType : "N/A"}');
//
//
//                 },
//                 child: Text("print")),
            Custominformationstudent(

              name: controller.sstudentAnswer['name'] ?? 'Unknown Student',

              grade:
                  "Grade: ${controller.getCountCorrectAnswer()} / ${controller.answers.length}",
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.separated(
                // physics: NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Number badge
                      Customquestionnumber(
                        order: index + 1,
                        isCorrect: controller.answers[index],
                      ),
                      Customstatuesanswer(
                        isCorrect: controller.answers[index],
                        question: ConstValue.questionList[index].question,

                        answer:controller.sstudentAnswer[StringsName
                            .KlistCorrectAnswer][index] ==
                            -1
                            ? "user not choose"
                            : ConstValue.questionList[index].listAnswer[
                        controller.sstudentAnswer[StringsName
                            .KlistCorrectAnswer][index]],

                        // answer: controller.sstudentAnswer[
                        //             StringsName.KlistCorrectAnswer] ==
                        //         -1
                        //     ? "not found"
                        //     : ConstValue.questionList[index].listAnswer[
                        //         controller.sstudentAnswer[
                        //             StringsName.KlistCorrectAnswer][index]],
                        correctAnswer: ConstValue
                            .questionList[index]
                            .listAnswer[
                                ConstValue.questionList[index].correctAnswer]
                            .toString(),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
                itemCount: controller
                    .sstudentAnswer[StringsName.KlistCorrectAnswer].length,
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
