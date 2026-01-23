import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  TimeOfDay time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text("${time.hour}:${time.minute}"),
              ElevatedButton(onPressed: () async{
            TimeOfDay? newtime = await showTimePicker(context: context,
                 initialTime: time);
                 if(newtime == null) return;  //منع التطبيق من الانهيار (Crash)  "Guard Clause"

                 setState(() {
                   
                   time = newtime;
                 });
              }, child: Text("Select time")),
            ],
          ),
        ),
      ),
    );
  }
}
