
import 'package:flutter/material.dart';

class NavScreenOne extends StatefulWidget {
  const NavScreenOne({super.key});

  @override
  State<NavScreenOne> createState() => _NavScreenOneState();
}

class _NavScreenOneState extends State<NavScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.amber,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,'/screen2');
          },
          child: Text("Go to Screen Two "),
        ),
      ),
    );
  }
}
