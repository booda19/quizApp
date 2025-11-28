class OnBoardingModel{

  String? _image_onBoarding;
  String? _onBoardingTitle;
  String? _onBoardingDesc;


  OnBoardingModel(String Image_onBoarding,String OnBoardingTitle,String OnBoardingDesc){

    _image_onBoarding = Image_onBoarding;
    _onBoardingTitle = OnBoardingTitle;
    _onBoardingDesc = OnBoardingDesc;


  }


  String get image_onBoarding => _image_onBoarding!;

  set image_onBoarding(String value) {
    _image_onBoarding = value;
  }

  String get onBoardingTitle => _onBoardingTitle!;

  set onBoardingTitle(String value) {
    _onBoardingTitle = value;
  }



  String get onBoardingDesc => _onBoardingDesc!;

  set onBoardingDesc(String value) {
    _onBoardingDesc = value;
  }
}