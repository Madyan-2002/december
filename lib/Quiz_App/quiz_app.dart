import 'package:december/Quiz_App/Data/data_base.dart';
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
  int choiceIndex = -1;
  int index = 0;
  int score = 0;

  void resetQuiz() {
    setState(() {
      index = 0;
      score = 0;
      choiceIndex = -1;
    });
  }

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
        child: index == question.length
            ? questionScreen(score, resetQuiz)
            : Column(
                children: [
                  Text("Your score : $score", style: TextStyleClass.score),
                  QuestionWidget(text: question[index].question),
                  SizedBox(height: 20),
                  Text(
                    "Select the correct answer",
                    style: TextStyle(color: ColorsClass2.questionColor),
                  ),
                  Column(
                    children: question[index].answer.map((a) {
                      int tapIndex = question[index].answer.indexOf(a);

                      return AnswerWidget(
                        choice: a.choice,
                        color: ColorsClass2.secondColor,
                        bgColor: choiceIndex == tapIndex
                            ? ColorsClass2.thridColor
                            : ColorsClass2.secondColor,
                        text: a.answer,
                        onTap: () {
                          setState(() {
                            choiceIndex = tapIndex;
                          });
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 40),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 15,
                      backgroundColor: ColorsClass2.primaryColor,
                    ),
                    onPressed: () {
                      if (choiceIndex != -1) {
                        setState(() {
                          if (index < question.length - 1) {
                            index++;
                            score += 5;
                            choiceIndex = -1;
                          } else {
                            index++;
                            score += 5;
                          }
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("please select answer. ")),
                        );
                      }
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'Next',
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

Widget questionScreen(int score, void Function() onReset) {
  return Center(
    child: Column(
      mainAxisAlignment: .spaceEvenly,
      children: [
        Text("Congratulations", style: TextStyleClass.con),
        Icon(
          Icons.celebration_outlined,
          size: 80,
          color: ColorsClass2.primaryColor,
        ),
        Text("Your Socre is : $score", style: TextStyleClass.con),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 15,
            backgroundColor: ColorsClass2.primaryColor,
          ),
          onPressed: onReset,

          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Reset Quiz',
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
  );
}
