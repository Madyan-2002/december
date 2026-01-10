import 'package:december/Quiz_App/Data/answer_model.dart';
import 'package:december/Quiz_App/Data/question_model.dart';
import 'package:flutter/widgets.dart';

List<QuestionModel> question = [
  QuestionModel(
    question: "What is fav color ? ",
    answer: [
      AnswerModel(choice: "A", answer: "Red", onTap: () {debugPrint("Red");}),
      AnswerModel(choice: "B", answer: "Blue", onTap: () {debugPrint("Blue");}),
      AnswerModel(choice: "C", answer: "Brown", onTap: () {debugPrint("Brown");}),
      AnswerModel(choice: "D", answer: "Green", onTap: () {debugPrint("Green");}),
    ],
  ),
  QuestionModel(
    question: "What is your name ? ",
    answer: [
      AnswerModel(choice: "A", answer: "Madyan", onTap: () {debugPrint("Madyan");}),
      AnswerModel(choice: "B", answer: "Omar", onTap: () {debugPrint("Omar");}),
      AnswerModel(choice: "C", answer: "Asmahan", onTap: () {debugPrint("Ssmahan");}),
      AnswerModel(choice: "D", answer: "Anas", onTap: () {debugPrint("Anas");}),
    ],
  ),
  QuestionModel(
    question: "How old are you ? ",
    answer: [
      AnswerModel(choice: "A", answer: "25", onTap: () {debugPrint("25");}),
      AnswerModel(choice: "B", answer: "23", onTap: () {debugPrint("23");}),
      AnswerModel(choice: "C", answer: "30", onTap: () {debugPrint("30");}),
      AnswerModel(choice: "D", answer: "31", onTap: () {debugPrint("31");}),
    ],
  ),
];
