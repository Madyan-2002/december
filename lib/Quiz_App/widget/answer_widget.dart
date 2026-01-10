import 'package:december/Quiz_App/style/colors_class2.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String choice;
  final Color color;
  final Color bgColor;
  final String text;
  final VoidCallback onTap;

  const AnswerWidget({
    super.key,
    required this.choice,
    required this.color,
    required this.bgColor,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      
      height: size.height * 0.09,
      width: double.infinity,

      child: Card(
        color:bgColor ,
        borderOnForeground: true,
        elevation: 8,
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(choice),
            ),
          ),
          title: Text(
            text,
            style: TextStyle(
              color: ColorsClass2.questionColor,
              fontSize: 15,
              fontWeight: .bold,
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
