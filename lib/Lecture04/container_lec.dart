import 'package:flutter/material.dart';

class ContainerLec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
      backgroundColor: Colors.deepPurple,

     ),
     body:Align(
      alignment: Alignment.topCenter,
      child:SizedBox(
        child: Container(
          margin: EdgeInsets.all(25),
          width:150,
          height: 150,
          decoration: BoxDecoration(
            color:Colors.amber,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.red,width: 10),
            boxShadow: [
              BoxShadow(
               offset: Offset(5, 10),
               blurRadius: 30,
               spreadRadius: 20,
               color:Colors.blue,
        
              )
            ]
          ),
          child: Center(child: Text("Welcome to flutter")),
          ),
      )
     )
    );
  }
}