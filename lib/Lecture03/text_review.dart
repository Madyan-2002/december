import 'package:flutter/material.dart';


class TextReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Madyan"),
      backgroundColor: Colors.deepOrange,

    ),
    body:SafeArea(
      child:Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello Madyan ...",
          style: TextStyle(
            fontSize:25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Madyanfont',
          ),
          ),
          Text("Hello Ahmad ...",
          style: TextStyle(
            fontSize:15,
            fontWeight: FontWeight.bold,
            fontFamily: 'Madyanfont',
          ),
          ),
          Text("Hello Omar ...",
          style: TextStyle(
            fontSize:5,
            fontWeight: FontWeight.bold,
            fontFamily: 'Madyanfont',
          ),
          ),
        ],
      ),
    ),

    ) 
    ); 
  }
}