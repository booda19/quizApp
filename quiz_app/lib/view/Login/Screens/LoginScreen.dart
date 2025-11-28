import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/controller/LOgin/LOginSCreenController.dart';
import 'package:quiz_app/core/resources/AssetsManager.dart';
import '../../../core/resources/ColorManager.dart';
import '../../../core/resources/StringsName.dart';
import '../Widgets/CustomLoginButton.dart';
import '../Widgets/CustomTExtField.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  late LOginSCreenController _lOginSCreenController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lOginSCreenController = LOginSCreenController();
  }

  @override
  void dispose() {
    // TODO: implement initState
    _lOginSCreenController.onDispose();
    super.dispose();
    _lOginSCreenController = LOginSCreenController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(AssetsManager.loginBAck)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              StringsName.kLogo,
              // style: TextStyle(),
              style: GoogleFonts.montserrat(
                  color: ColorManager.kPrimarycolor, fontSize: 200),
            ),
            Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    StringsName.KenterYourNAme,
                    // style: TextStyle(),
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      color: ColorManager.kPrimarycolor,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Customtextfield(
                  validator: (value) {
                    return _lOginSCreenController.validateNAme(value);
                  },
                  onChanged: (value) {
                    _lOginSCreenController.onChangedTExtFormField(value);
                  },
                  keyForm: _lOginSCreenController.formKeyName,
                  controllerName: _lOginSCreenController.controllerNameTExtField,
                ),
              ],
            ),
            Customloginbutton(
              isActiveoutputStream:
                  _lOginSCreenController.outputDataButtonStatus,
              onPressed: () {

                // print(_lOginSCreenController.controllerNameTExtField.text = "safa");

                _lOginSCreenController.navigateToQUizScreen(context);
              }, text: StringsName.kStart,
            )
          ],
        ),
      ),
    );
  }
}
