import 'package:flutter/material.dart';

class NavScreenThree extends StatelessWidget {
  const NavScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
          },
          child: Text("Go to screen one"),
        ),
      ),
    );
  }
}
