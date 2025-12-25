import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Image Widget"),
     ),
     body: Center(
      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
      width:200,
      height: 200,
      fit:BoxFit.fill),
      // child:Image.asset('assets/images/sun.jpg',
      // width: 180,
      // height: 180,
      // fit: BoxFit.fill
      // ),
     )
    );
  }
}