import 'package:december/responsive/style/text_style.dart';
import 'package:flutter/material.dart';

class SharedBtn extends StatefulWidget {
  const SharedBtn({super.key});

  @override
  State<SharedBtn> createState() => _SharedBtnState();
}

class _SharedBtnState extends State<SharedBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {}, // Text
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: Text('Go to screen', style: buttonText),
    ); // ElevatedButton
  }
}
