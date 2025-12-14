import 'package:december/Lecture01/home_screen.dart';
import 'package:december/Lecture02/rich_text.dart';
import 'package:december/Lecture03/text_review.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
 Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    //home:HomeScreen()
    home:TextReview()
    // home:RichTextPage()
  );
 }
}