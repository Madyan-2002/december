import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF626ce3),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sister',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Calling ...",
                style: TextStyle(color: Colors.white54, fontSize: 15),
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                    
                            color: Colors.white60,
                          ),
                          child: Icon(
                            Icons.person,
                            size: 35,
                            color: Color(0XFF626ce3),
                          ),
                        ),
                        Text(
                          "Contact",
                          style: TextStyle(color: Colors.white54, fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                    
                            color: Colors.white60,
                          ),
                          child: Icon(
                            Icons.add,
                            size: 35,
                            color: Color(0XFF626ce3),
                          ),
                        ),
                        Text(
                          "Add Call",
                          style: TextStyle(color: Colors.white54, fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                    
                            color: Colors.white60,
                          ),
                          child: Icon(
                            Icons.mic_off,
                            size: 35,
                            color: Color(0XFF626ce3),
                          ),
                        ),
                        Text(
                          "Mute",
                          style: TextStyle(color: Colors.white54, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                    
                            color: Colors.white60,
                          ),
                          child: Icon(
                            Icons.pause,
                            size: 35,
                            color: Color(0XFF626ce3),
                          ),
                        ),
                        Text(
                          "Hold",
                          style: TextStyle(color: Colors.white54, fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                    
                            color: Colors.white60,
                          ),
                          child: Icon(
                            Icons.video_call,
                            size: 35,
                            color: Color(0XFF626ce3),
                          ),
                        ),
                        Text(
                          "Video Call",
                          style: TextStyle(color: Colors.white54, fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                    
                            color: Colors.white60,
                          ),
                          child: Icon(
                            Icons.fiber_manual_record,
                            size: 35,
                            color: Color(0XFF626ce3),
                          ),
                        ),
                        Text(
                          "Record",
                          style: TextStyle(color: Colors.white54, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Icon(Icons.volume_up, color: Colors.white, size: 40),

                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Icon(Icons.call_end, color: Colors.white, size: 40),
                  ),

                  Icon(Icons.dialpad, color: Colors.white, size: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
