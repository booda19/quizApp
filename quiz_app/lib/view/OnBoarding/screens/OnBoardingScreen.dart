import 'package:flutter/material.dart';
import 'package:quiz_app/controller/On_Boarding/OnoardingController.dart';
import 'package:quiz_app/view/OnBoarding/widgets/CustomBottomNav.dart';

import '../../../core/resources/List_onboarding.dart';
import '../widgets/CustomItemOnBoarding_page.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  late OnBoardingController _onBoardingController;

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onBoardingController = OnBoardingController();
  }

  void dispose(){
    _onBoardingController.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Custombottomnav(
        count: ConstValue.onBoardingListconst.length,
        outputDatadotIndicator: _onBoardingController.outputData,
        outputDatadoTo_kStart: _onBoardingController.outputDataStartText,
        ontapDotIndicator: (index) {
          _onBoardingController.onTapDotIndicator(index as double);

        }, onTapNext: () {
        _onBoardingController.onTapNext(context);
      },
        onTapSkip: () {
          _onBoardingController.goToLoginPage(context);
        },
      ),

      body: PageView.builder(
        onPageChanged: (value) {
          _onBoardingController.onTapDotIndicator(value as double);
        },
        controller: _onBoardingController.onBoardingpagecontroller,
            itemCount: ConstValue.onBoardingListconst.length,
            itemBuilder: (BuildContext context, int index)=>CustomitemonboardingPage(onBoardingModel: ConstValue.onBoardingListconst[index],)
          
          ),

      );    
  }
}








