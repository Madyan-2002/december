import 'package:december/Quiz_App/style/colors_class2.dart';
import 'package:december/Quiz_App/style/text_style_class.dart';
import 'package:december/Quiz_App/widget/answer_widget.dart';
import 'package:december/Quiz_App/widget/question_widget.dart';
import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizApp();
}

class _QuizApp extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsClass2.primaryColor,
        title: Text("Quiz App", style: TextStyleClass.headLineStyle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            QuestionWidget(text: "What is fav color ?"),
            SizedBox(height: 20),
            Text(
              "Select the correct answer",
              style: TextStyle(color: ColorsClass2.thridColor),
            ),
            AnswerWidget(
              choice: 'A',
              color: ColorsClass2.secondColor,
              text: 'Red',
            ),
            AnswerWidget(
              choice: 'B',
              color: ColorsClass2.secondColor,
              text: 'Blue',
            ),
            AnswerWidget(
              choice: 'C',
              color: ColorsClass2.secondColor,
              text: 'Green',
            ),
            AnswerWidget(
              choice: 'D',
              color: ColorsClass2.secondColor,
              text: 'Pink',
            ),

            SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 15,
                backgroundColor: ColorsClass2.submit,
              ),
              onPressed: () {},
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: ColorsClass2.secondColor,
                      fontSize: 20,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(250, 230, 212, 239),
    );
  }
}
