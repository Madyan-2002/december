import 'package:flutter/material.dart';

class Stack25 extends StatelessWidget {
  const Stack25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("App Bar")),

      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        children: [
          Stack(
            children: [
              Box(),
              Positioned(
                right: 15,
                top: 15,
                child: Container(height: 150, width: 150,
                color:Colors.green),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(Icons.favorite_border_rounded),
                ),
              ),
            ],
          ),
          Box(),
          Box(),
          Box(),
          Box(),
          Box(),
          Box(),
          Box(),
        ],
      ),
    );
  }
}

Widget Box() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.amber, height: 200, width: 200),
  );
}

