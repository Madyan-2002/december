import 'package:flutter/material.dart';

class HomeScreen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Text Widget Example",
        textAlign:TextAlign.left,
        style:TextStyle(
          fontSize:20,
          color: Colors.white,
         // fontWeight: FontWeight.bold,
          // wordSpacing: 10,
          // letterSpacing: 10,
        )
        ),

       // centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:
      Align(
        alignment: Alignment.centerLeft,
        child: Text("Hello\tWorld!\nThis\tis\tthe\tText\nWidget.",
        //textDirection:TextDirection.rtl,
        
        style:TextStyle(
          fontSize:25,
          backgroundColor:Colors.yellow,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.purple,
          wordSpacing: 10,
          letterSpacing: 5,
          // decoration: TextDecoration.underline,
          // decorationColor: const Color.fromARGB(255, 105, 29, 1),
          // decorationStyle:TextDecorationStyle.dashed,
          // decorationThickness: 3,
          shadows: [
            Shadow(color: Colors.pink,
            offset: Offset(5, 10),
            blurRadius: 25,
            ),
          ]
        )
        )
        ),
      
    );
  }
}