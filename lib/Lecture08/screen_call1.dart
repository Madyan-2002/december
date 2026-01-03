import 'package:flutter/material.dart';

class ScreenCall1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Color(0XFF626ce3),
  body: SafeArea(
    child:SizedBox(
      width: double.infinity, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
      Text('Sister',
           style: TextStyle(
           color:Colors.white,
           fontSize: 30,
           fontWeight: FontWeight.bold,
           ),
          ),
          SizedBox(
             height:MediaQuery.of(context).size.height/2,
             
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
             Container(
              height: 150,
              width:150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
               // borderRadius: BorderRadius.circular(150),
                // border: Border(
                //   bottom: BorderSide(
                //     style: BorderStyle.solid,
                //     width:20,
                //     color:Colors.teal
                //   )
                // ),
                color:Colors.white60,
              ),
              child: Icon(Icons.person,size:70)),
              Text("Calling ...",
              style: TextStyle(
                color:Colors.white,
                fontSize: 25,
                
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:Colors.white60
                  ),
                    child: Icon(Icons.call,color:Colors.green
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:Colors.white60,
                    ),
                    child: Icon(Icons.call_end,color:Colors.red)
                  )
                ],
              )
            ],
               ),
          ),
             Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color:Colors.white60,
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: Text("Send Message",)
              )
        ],
      ),
    ) 
  )  
 );
  }
}