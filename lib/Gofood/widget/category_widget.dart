import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  Color colorBg;
  String text;
   CategoryWidget({super.key , required this.colorBg , required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Card(
        elevation: 15,
        color: colorBg,
        child: Center(
          child: Text(text,
          style: Theme.of(context).textTheme.titleLarge,
          ),
          
          ),
      ),
    );
  }
}