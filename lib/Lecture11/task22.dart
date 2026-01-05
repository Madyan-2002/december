import 'package:flutter/material.dart';

class Task22 extends StatefulWidget {
  @override
  State<Task22> createState() => _Task22();
}

class _Task22 extends State<Task22> {
  final Map<String, Color> colorMap = {
    'Red': Colors.red,
    'Blue': Colors.blue,
    'Black': Colors.black,
    'Pink': Colors.pink,
  };

  String selectedColor = 'Black';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMap[selectedColor],
      body: Center(
        child: Container(
          decoration: BoxDecoration(
          color: Colors.teal,
          
          borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          
          child: DropdownButton<String>(
            iconSize: 40,
            borderRadius: BorderRadius.circular(25),
            items: colorMap.keys
                .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                .toList(),
            value: selectedColor,

            onChanged: (value) {
              setState(() {
                selectedColor = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
