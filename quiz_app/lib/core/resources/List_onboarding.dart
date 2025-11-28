import 'package:quiz_app/core/resources/AssetsManager.dart';
import 'package:quiz_app/core/resources/StringsName.dart';
import 'package:quiz_app/models/OnBoarding_Model/On_Boarding_model.dart';
import 'package:quiz_app/models/Quiez_model/QuestionModel.dart';

class ConstValue {
  static List<OnBoardingModel> onBoardingListconst = [
    OnBoardingModel(AssetsManager.Frame1, StringsName.konBoardingTitle1,
        StringsName.konBoardingDesc1),
    OnBoardingModel(AssetsManager.Frame2, StringsName.konBoardingTitle2,
        StringsName.konBoardingDesc2),
    OnBoardingModel(AssetsManager.Frame3, StringsName.konBoardingTitle3,
        StringsName.konBoardingDesc3),
  ];

  static List<QuestionModel> questionList = [
    QuestionModel(
      question: "Which planet is known as the \"Red Planet\"?",
      listAnswers: [
        "Venus",
        "Mars",
        "Jupiter",
        "Mercury",
      ],
      correctAnswer: 1,
    ),
    QuestionModel(
      question: "What is the capital of France?",
      listAnswers: [
        "Madrid",
        "Rome",
        "Paris",
        "Berlin",
      ],
      correctAnswer: 2,
    ),
    QuestionModel(
      question: "Which number is a prime number?",
      listAnswers: [
        "21",
        "19",
        "35",
        "27",
      ],
      correctAnswer: 1,
    ),
    QuestionModel(
      question: "Who wrote the play 'Romeo and Juliet'?",
      listAnswers: [
        "William Shakespeare",
        "Charles Dickens",
        "Mark Twain",
        "George Orwell",
      ],
      correctAnswer:0,
    ),
    QuestionModel(
      question: "Which gas do humans exhale?",
      listAnswers: [
        "Oxygen",
        "Carbon dioxide",
        "Nitrogen",
        "Hydrogen",
      ],
      correctAnswer: 1,
    ),
    QuestionModel(
      question: "What is the largest ocean on Earth?",
      listAnswers: [
        "Atlantic Ocean",
        "Pacific Ocean",
        "Indian Ocean",
        "Arctic Ocean",
      ],
      correctAnswer: 1,
    ),
    QuestionModel(
      question: "In computing, 'CPU' stands for:",
      listAnswers: [
        "Central Process Unit",
        "Central Processing Unit",
        "Computer Personal Unit",
        "Central Program Unit",
      ],
      correctAnswer: 1,
    ),
    QuestionModel(
      question: "Which country invented paper?",
      listAnswers: [
        "India",
        "Egypt",
        "China",
        "Greece",
      ],
      correctAnswer: 2,
    ),
    QuestionModel(
      question: "What is the square root of 144?",
      listAnswers: [
        "10",
        "11",
        "12",
        "14",
      ],
      correctAnswer: 2,
    ),
    QuestionModel(
      question: "Which is the fastest land animal?",
      listAnswers: [
        "Lion",
        "Tiger",
        "Cheetah",
        "Leopard",
      ],
      correctAnswer: 2,
    ),
  ];


}
