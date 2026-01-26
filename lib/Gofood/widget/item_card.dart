import 'package:december/Gofood/model/meal_model.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  MealModel mealModel;
  ItemCard({super.key, required this.mealModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Expanded(child: Image.asset(mealModel.img, height: 120)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      mealModel.name,
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.copyWith(fontWeight: .bold),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,

                    child: Text("${mealModel.price} \$"),
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 5, right: 5, child: Icon(Icons.favorite_outline)),
        ],
      ),
    );
  }
}