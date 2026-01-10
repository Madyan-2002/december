import 'package:flutter/material.dart';

class AnswerModel {
  String answer;
  VoidCallback onTap;
  String choice;

  AnswerModel({required this.answer, required this.onTap , required this.choice}); 
}