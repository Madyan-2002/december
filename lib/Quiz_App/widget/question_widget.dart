import 'package:december/Quiz_App/style/colors_class2.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String text;
  const QuestionWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.20,
      width: double.infinity,
      child: Card(
        color: ColorsClass2.secondColor,
        elevation: 30,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorsClass2.questionColor,
              fontSize: 20,
              fontWeight: .bold,
            ),
          ),
        ),
      ),
    );
  }
}
