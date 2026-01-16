import 'package:flutter/material.dart';

class ListViewClass extends StatelessWidget {
  final List<String> items = [
    'Dart',
    'Flutter',
    'Firebase',
    'JS',
    'C++',
    'Dart',
    'Flutter',
    'Firebase',
    'JS',
    'C++',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 15,
              color: Colors.deepPurple,
              child: textFunction(items[index]),
            );
          },
        ),
      ),
    );
  }
}

Widget textFunction(String txt) {
  return Text(
    txt,
    style: TextStyle(fontSize: 40, fontWeight: .bold, color: Colors.amber),
  );
}
