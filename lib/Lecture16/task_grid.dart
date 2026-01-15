import 'package:flutter/material.dart';

class TaskGrid extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"icon": Icons.home, "title": "Home"},
    {"icon": Icons.contacts, "title": "Contact"},
    {"icon": Icons.map, "title": "Map"},
    {"icon": Icons.phone, "title": "Phone"},
    {"icon": Icons.camera_alt, "title": "Camera"},
    {"icon": Icons.settings, "title": "Setting"},
    {"icon": Icons.photo, "title": "Album"},
    {"icon": Icons.wifi, "title": "WiFi"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Flutter GridView Demo",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(2),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) => CardFunction(items[index]),
        ),
      ),
    );
  }
}

Widget CardFunction(Map<String, dynamic> item) {
  return Card(
    elevation: 25,
    color: Colors.orange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(5),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(item["icon"], size: 35, color: Color.fromARGB(255, 93, 46, 1)),
        SizedBox(height: 20),
        Text(
          item["title"],
          style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 93, 46, 1)),
        ),
      ],
    ),
  );
}
