import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text Widget Example"),
      ),
      body: SafeArea(
        child:Column(
          children: [
            Center(
              child: RichText(text:TextSpan(
                text:"Don't have an account? ",
                style: TextStyle(
                  color:Colors.redAccent,
                ),
                children: <TextSpan>[
                  TextSpan(text:"Sign up",
                  style:TextStyle(
                    color:Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                  ..onTap = (){}
                  )
                ]
              )
             ),
            ),
            RichText(text: TextSpan(
                text: "Click",
                style:TextStyle(
                  color:Colors.black54,

                ),
                children:[
                  WidgetSpan(child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Icon(Icons.add,color:Colors.redAccent,size:15,
                    ),
                  )
                  ),
                  TextSpan(text:"to add")

                ]
            )
            )
          ],
        )
      )
    );
  }
}