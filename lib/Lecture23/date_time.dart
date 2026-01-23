import 'package:flutter/material.dart';

class DateTime33 extends StatefulWidget {
  const DateTime33({super.key});

  @override
  State<DateTime33> createState() => _DateTime33State();
}

class _DateTime33State extends State<DateTime33> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                '${dateTime.day}/${dateTime.month}/${dateTime.year} - ${dateTime.hour}:${dateTime.minute}',
              ),
              ElevatedButton(
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: dateTime,
                    firstDate: DateTime(2026),
                    lastDate: DateTime(2040),
                  );
                  if (newDate == null) return;
                  TimeOfDay? newTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute),
                  );
                  if (newTime == null) return;
                  
             DateTime newDateTime = DateTime(
                    newDate.year,
                    newDate.month,
                    newDate.day,
                    newTime.hour,
                    newTime.minute
                  );

                setState(() {
                  dateTime = newDateTime;
                });

                },
                child: Text("Selct Date"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
