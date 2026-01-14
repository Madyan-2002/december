import 'package:december/Lecture15/DB/db.dart';
import 'package:flutter/material.dart';

class TaskIndex extends StatefulWidget {
  @override
  State<TaskIndex> createState() => _TaskIndexState();
}

class _TaskIndexState extends State<TaskIndex> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "My Photo ",
          style: TextStyle(
            fontSize: 25,
            fontWeight: .bold,
            color: const Color.fromARGB(248, 255, 255, 255),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: Card(
                  borderOnForeground: true,
                  elevation: 25,

                  color: Colors.black,
                  child: Center(
                    child: Image.network(img[currentIndex], fit: BoxFit.cover),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  if(currentIndex < img.length -1){
                      currentIndex++;
                  }else{
                    currentIndex = 0;
                  }
                  
                });
              }, child: Text("Next")),
            ],
          ),
        ),
      ),
    );
  }
}
