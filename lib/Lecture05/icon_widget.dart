import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: SafeArea(
      child:Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        Text('Madyan is here'),
        Icon(IconData(0xf869,fontFamily:'MaterialIcons')),
        Icon(Icons.add,
        color:Colors.red,
        size:20)
            ],
           ),
      ) ) 
    );
  }
}