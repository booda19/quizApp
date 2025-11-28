import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, required this.onChanged, required this.keyForm, this.validator, required this.controllerName});

  final ValueChanged<String> onChanged;
final GlobalKey<FormState> keyForm;
  final FormFieldValidator<String>? validator;
  final TextEditingController controllerName;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: TextFormField(
        controller: controllerName,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Color(0xff473F97)),
            borderRadius: BorderRadius.circular(9),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: Colors.blue),
            borderRadius: BorderRadius.circular(9),
          ),
          labelText: 'Enter your text',
          hintText: 'Type something...',
        ),
      ),
    );
  }
}
