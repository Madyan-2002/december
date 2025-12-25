import 'package:flutter/material.dart';

class ImageInContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    List <String> category = ['All','Category','Top','Recommended'];
   return Scaffold(
    
    body:SafeArea(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Container(
            width:200,
            height:60,
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.blueGrey
                ),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left:10),
                child: Icon(Icons.search,color:Colors.deepOrangeAccent),
              ),
              SizedBox(width: 10,),
              Text("Search",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              )
            ],
            
            )
            
           ),
           Container(
            width: 60,
            height: 60,
           decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.blueGrey
                ),
            child: Icon(Icons.notification_add,color:Colors.deepOrangeAccent),
            )
          ]
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?cs=srgb&dl=pexels-hsapir-1054655.jpg&fm=jpg"))
            ),
           
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: category.map((s) => customContainer(s)).toList(),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            customPhoto("https://images.unsplash.com/photo-1497316730643-415fac54a2af?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8"),
            customPhoto("https://cdn.pixabay.com/photo/2020/06/21/09/48/hill-5324149_640.jpg")
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            customPhoto("https://render.fineartamerica.com/images/rendered/medium/print/8/5.5/break/images/artworkimages/medium/3/valley-of-gods-john-mueller.jpg"),
            customPhoto("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS11YPByYwGLkcES05PTwnmqkPoRAFzOf9HA&s")
          ],)
          
        ],
      ),
    )
    ) 
   );
  }

//*********************functions*******************************

  Widget customContainer(String txt){
    return Container(
      decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.blueGrey
                ),
                width: 80,
                height: 25,
                child: Center(
                  child: Text(txt,
                  style: TextStyle(
                   fontSize: 10,
                    color:Colors.black,
                    fontWeight: FontWeight.bold,
                    
                  ),),
                ),
    );
  }

  Widget customPhoto(String img){
    return 
        Container(
          width:130,
          height: 130,
          
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.all(Radius.circular(15)),
             image: DecorationImage(image: NetworkImage(img),
             fit: BoxFit.cover),
             
            
          ),
        );

  }

}