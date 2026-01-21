import 'package:december/Gofood/splash_screen.dart';
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
import 'package:december/Lecture15/task_index.dart';
import 'package:december/Lecture16/task_grid.dart';
import 'package:december/Lecture17/task_stack.dart';
import 'package:december/Lecture18/list_view_class.dart';
import 'package:december/Lecture19/views/grid_view_advance.dart';
import 'package:december/Lecture19/views/list_view_advance.dart';
import 'package:december/Lecture19/views/stack25.dart';
import 'package:december/Lecture20/nav_screen_one.dart';
import 'package:december/Lecture20/nav_screen_three.dart';
import 'package:december/Lecture20/nav_screen_two.dart';
import 'package:december/Lecture21/form_class.dart';
import 'package:december/Lecture21/text_field_class.dart';
import 'package:december/Quiz_App/quiz_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/': (context) => NavScreenOne(),
      //   "/screen2": (context) => NavScreenTwo(),
      //   "/screen3": (context) => NavScreenThree(),
      // },
      //initialRoute: '/',
      debugShowCheckedModeBanner: false,

      // home:HomeScreen()
      // home:TextReview()
      // home:RichTextPage()
      //home:ContainerLec()
      //home:IconWidget()
      //home:ScreenCall1()
      //home:Task()
      // home:ImageWidget()
      // home:ImageInContainer()
      //home:Buttons()
      // home:TaskButtons()
      //home:ColorsClass()
      //home:Task22()
      //home:Training()
      //home: QuizApp(),
      // home:ListViewClass()
      //home:TaskIndex()
      //home: TaskGrid(),
      // home:ListViewAdvance(),
      // home: GridViewAdvance(),
      // home: Stack25(),
      // home: NavScreenOne(),
      //  home: FormClass(),
      //  home:TaskStack()
      home: const SplashScreen(),
    );
  }
}
