import 'package:flutter/material.dart';

class TextFieldClass extends StatefulWidget {
  const TextFieldClass({super.key});

  @override
  State<TextFieldClass> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldClass> {
  String name = "";
  int counter = 0;
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 139, 34, 2),
        title: Text("TextField in flutter"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              maxLength: 25,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {
                  name = value;
                  if (counter < 25) {
                    counter++;
                  }
                });
              },
              //cursorColor: Colors.amber,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                // hintText: "Mad2221@!@",
                labelText: 'Email',
                //contentPadding: .all(15),
                counter: Text("$counter/25"),
                // errorBorder: OutlineInputBorder(),
                // error: Text("Error"),
                // errorMaxLines: 1,
                //fillColor: Colors.blueGrey,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                prefixIcon: Icon(Icons.email),
                prefixIconColor: Colors.blueAccent,
                suffixIcon: Icon(Icons.visibility),
              ),
            ),

            SizedBox(height: 20),
            Text("Hello , ${emailController.text} "),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(249, 215, 181, 183),
    );
  }
}
