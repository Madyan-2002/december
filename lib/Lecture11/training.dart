import 'package:flutter/material.dart';

class Training extends StatefulWidget {
  @override
  State<Training> createState() => _Training();
}

class _Training extends State<Training> {
  final Map<String, Color> colors = {
    'Red': Colors.red,
    'Pink': Colors.pink,
    'Blue': Colors.blue,
    'Brown': Colors.brown,
    'Green': Colors.green,
  };
  String selctedColor = 'Blue';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[selctedColor],
      body: Center(
        child: Container(
          child: DropdownButton(
            items: colors.keys
                .map(
                  (ColorName) => DropdownMenuItem(
                    value: ColorName,
                    child: Text(ColorName),
                  ),
                )
                .toList(),
            value: selctedColor,
            onChanged: (newColor) {
              setState(() {
                selctedColor = newColor!;
              });
            },
          ),
        ),
      ),
    );
  }
}
