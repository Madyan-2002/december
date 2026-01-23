import 'package:flutter/material.dart';

class TimeAnddate extends StatefulWidget {
  const TimeAnddate({super.key});

  @override
  State<TimeAnddate> createState() => _TimeAnddateState();
}

class _TimeAnddateState extends State<TimeAnddate> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text('${date.day}/${date.month}/${date.year}'),
              ElevatedButton(
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2026),
                    lastDate: DateTime(2040),
                  );
                  if (newDate == null) return;
                  setState(() {
                    date = newDate;
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
