import 'package:flutter/material.dart';
class GridViewAdvance extends StatelessWidget {
  const GridViewAdvance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GridView.extent(
          physics: NeverScrollableScrollPhysics(),
          maxCrossAxisExtent: 250,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          shrinkWrap: true,
        children: [
          customContainer("data"),
          customContainer("data"),
          customContainer("data"),
          customContainer("data"),
          customContainer("data"),
          customContainer("data"),
          customContainer("data"),
        
        ],),
      ),
    );
  }
}

Widget customContainer(String data) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Container(
      color: const Color.fromARGB(255, 52, 107, 135),
      child: Center(child: Text(data)),
    ),
  );
}