import 'package:december/Gofood/widget/category_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List <String> categories = [
    'ALL' , 'Men' , 'Women' , 'Trend',
   ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
   
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(10, 10),
                      blurRadius: 30,
                    ),
                  ],
                ),
                width: width * 0.60,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefix: Icon(Icons.search),
                    hint: Text("Search"),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: width * 0.15,
                decoration: BoxDecoration(
                  color: Color(0xCDfe210e),
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(10, 10),
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: Icon(Icons.filter_list),
              ),
            ],
          ),
          SizedBox(height: height * 0.02,),
          SizedBox(
            height:height * 0.07 ,
            child: ListView.builder(
              itemCount: categories.length,
              shrinkWrap: true,  
              itemExtent: 100,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context , index) {
                return CategoryWidget(colorBg: Colors.grey, text: categories[index]);
            }),
          )
        ],
      ),
    );
  }
}
