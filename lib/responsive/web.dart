import 'package:december/responsive/btn.dart';
import 'package:december/responsive/style/text_style.dart';
import 'package:flutter/material.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        //leading: Text('Logo', style: tabText),
        actions: [
          Text('Home', style: tabText),
          const SizedBox(width: 50),
          Text('Message', style: tabText),
        ],
      ), // appBar
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(   
            mainAxisAlignment:  .center,   
            crossAxisAlignment: .center,    
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                child: Text(
                  "Building user interfaces with Flutter",
                  style: headText,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                child: Text(
"Flutter widgets are built using a modern framework that takes inspiration from React. "
"The central idea is that you build your UI out of widgets. "
"Widgets describe what their view should look like given their current configuration and state. "
"When a widget's state changes, the widget rebuilds its description, "
"which the framework diffs against the previous description in order to determine "
 "the minimal changes needed in the underlying render tree to transition from one state to the next.",
                  style: bodyText,
                ),
              ),
              SizedBox(height: 40,),
              SharedBtn(),
            ],
          ),
        ),
        
      ), 
      drawer: Drawer(),
    ); 
  }
}
