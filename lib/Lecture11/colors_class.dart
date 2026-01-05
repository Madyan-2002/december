import 'package:flutter/material.dart';

class ColorsClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.deepOrange,
      title: Center(child: Text("Welcome ")),
     ),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customContainer(30,40,Colors.green.shade600),
          customContainer(50,60,Color(0xCD1c8583)),
          customContainer(50,60,Color(0xFF1c8583)),
          customContainer(70,80,Color.fromARGB(199, 7, 48, 211)),
          customContainer(90,99,Color.fromRGBO(250, 90, 70, 80)),

        ],
        
       ),
     ),
    );
  }
  Widget customContainer(double h, double w,Color c){
  return Container(
   height: h,
   width: w,

    decoration: BoxDecoration(
      color:c,
      borderRadius: BorderRadius.circular(20)
    ),
  );
 }
}