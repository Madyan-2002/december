import 'package:december/Gofood/model/meal_model.dart';
import 'package:december/Gofood/screens/details_screen.dart';
import 'package:december/Gofood/widget/category_widget.dart';
import 'package:december/Gofood/widget/item_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<String> categories = ["All", "Burger", "Frise", "Salad"];
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
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(10, 10),
                      blurRadius: 30,
                    ),
                  ],
                ),
                width: width * 0.70,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                    ),
                  ),
                ),
              ),

              Container(
                width: width * 0.14,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xCDfd4754),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 30,
                      offset: Offset(10, 10),
                    ),
                  ],
                ),
                child: Icon(Icons.filter_list, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          SizedBox(
            height: height * 0.06,
            child: ListView.builder(
              shrinkWrap: true,

              itemExtent: 100,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) =>
                  CategoryWidget(colorBg: Colors.white, text: categories[index]),
            ),
          ),
          SizedBox(height: height * 0.02),
          Expanded(
            child: GridView.builder(
              itemCount: meals.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(mad: meals[index])));
                  },
                  child: ItemCard(mealModel: meals[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}