import 'package:december/Lecture21/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FormClass extends StatefulWidget {
  const FormClass({super.key});

  @override
  State<FormClass> createState() => _FormClassState();
}

bool passOf = true;
final _formKey = GlobalKey<FormState>();

class _FormClassState extends State<FormClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Login Screen"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Lottie.network('https://lottie.host/4e77580c-954f-49ee-ac7d-d817038fc98a/OSq3BBsEFA.json',
               height: 200,),
              SizedBox(height: 15,),
              CustomTextField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Email is required";
                  }

                  if (!checkEmail(val)) {
                    return "Invalid email";
                  }
                  return null;
                },
                keyType: TextInputType.emailAddress,
                hint: "Email@example.com",
                preIcon: Icons.email,
                lbl: "Email",
                obsec: false,
              ),
              SizedBox(height: 15),
              CustomTextField(
                validator: (val) {

                  if (val == null || val.isEmpty) {
                    return "Password is required";
                  }

                  if (!checkPassword(val)) {
                    return "Password must be at least 8 characters,\ninclude letter, number and symbol";
                  }

                  return null;
                },
                keyType: TextInputType.text,
                hint: "******",
                preIcon: Icons.password,
                lbl: "Password",
                sfxIcon: InkWell(
                  onTap: () {
                    setState(() {
                      passOf = !passOf;
                    });
                  },
                  child: passOf
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
                obsec: passOf,
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("login done");
                  }
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text("login"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool checkEmail(String email) {
    String pattren =
        r'^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$';
    return RegExp(pattren).hasMatch(email);
  }

  bool checkPassword(String password) {
    String pattren2 =
        r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$";
    return RegExp(pattren2).hasMatch(password);
  }
}
