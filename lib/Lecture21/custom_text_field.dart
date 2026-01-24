import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextInputType keyType;
  String lbl;
  String hint;
  String? counter;
  String? hlp;
  IconData preIcon;
  Widget? sfxIcon;
  bool obsec;
  String? Function(String?)? validator;

  CustomTextField({
    super.key,
    required this.keyType,
    required this.lbl,
    required this.hint,
    this.counter,
    this.hlp,
    required this.preIcon,
    this.sfxIcon,
     required this.obsec,
     this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obsec,
      maxLength: 25,
      keyboardType: keyType,
      onChanged: (value) {},
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: lbl,
        hint: Text(hint),
        counterText: counter,
        helperText: hlp,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        prefixIcon: Icon(preIcon),
        prefixIconColor: Colors.blueAccent,
        suffixIcon: sfxIcon,
      ),
    );
  }
}
