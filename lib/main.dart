import 'package:december/Lecture01/home_screen.dart';
import 'package:december/Lecture02/rich_text.dart';
import 'package:december/Lecture03/text_review.dart';
import 'package:december/Lecture04/container_lec.dart';
import 'package:december/Lecture05/icon_widget.dart';
import 'package:december/Lecture06/image_widget.dart';
import 'package:december/Lecture07/image_in_container.dart';
import 'package:december/Lecture10/buttons.dart';
import 'package:december/Lecture08/screen_call1.dart';
import 'package:december/Lecture08/task.dart';
import 'package:december/Lecture10/task_buttons.dart';
import 'package:december/Lecture11/colors_class.dart';
import 'package:december/Lecture11/task22.dart';
import 'package:december/Lecture11/training.dart';
import 'package:december/Quiz_App/quiz_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:HomeScreen()
      // home:TextReview()
      // home:RichTextPage()
      //home:ContainerLec()
      //home:IconWidget()
      //home:ScreenCall1()
      //home:Task()
      // home:ImageWidget()
      //home:ImageInContainer()
      //home:Buttons()
      // home:TaskButtons()
      //home:ColorsClass()
      //home:Task22()
      //home:Training()
      home: QuizApp(),
    );
  }
}
