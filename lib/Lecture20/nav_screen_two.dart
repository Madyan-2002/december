import 'package:flutter/material.dart';

class NavScreenTwo extends StatelessWidget {
  const NavScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/screen3");
          },
          child: Text("Go to screen 3 "),
        ),
      ),
    );
  }
}
