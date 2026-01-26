import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextInputType keyType;
  String hint;
  String lbl;
  String? counter;
  String? helper;
  IconData preIcon;
  Widget? suffixIcon;
  bool obscure;
  String? Function(String?)? validator;
  CustomTextField({
    super.key,
    this.suffixIcon,
    required this.keyType,
    required this.hint,
    this.counter,
    required this.lbl,
    this.helper,
    required this.preIcon,
    this.obscure = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscure,
      // controller: emailController,
      keyboardType: keyType,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hint: Text(hint),
        labelText: lbl,
        contentPadding: EdgeInsets.all(20),
        counterText: counter,
        helperText: helper,
        enabledBorder: OutlineInputBorder(),
        prefixIcon: Icon(preIcon),
        suffixIcon: suffixIcon,
      ),
    );
  }
}