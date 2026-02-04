import 'package:december/Gofood/model/meal_model.dart';
import 'package:flutter/material.dart';

class CustomCart extends StatelessWidget {
   MealModel foodModel;
   CustomCart({super.key , required this.foodModel});
 
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(
          children: [           
            Image.asset(foodModel.img),
            SizedBox(width: 20,),
            Column(
        mainAxisAlignment: .center,
              children: [
                Text(foodModel.name ,style: TextStyle(
                  fontSize: 20,
                  fontWeight: .bold,
                ),),
                Text('${foodModel.price}' ,style: TextStyle(
                  fontSize: 20,
                  fontWeight: .bold,
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}