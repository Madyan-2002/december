import 'package:december/Gofood/model/meal_model.dart';
import 'package:december/Gofood/widget/fav_card.dart';
import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    List<MealModel> favMeals = meals
        .where((meal) => meal.isFav == true)
        .toList();
    return ListView.builder(
      itemCount: favMeals.length,
      itemBuilder: (context, index) {
        return FavCard(
          mealModel: favMeals[index],
          onTap: () {
            setState(() {
              int indexOfMeal = meals.indexWhere(
                (meal) => meal.name == favMeals[index].name,
              );
              meals[indexOfMeal] = meals[indexOfMeal].copyWith(isFav: false);
            });
          },
        );
      },
    );
  }
}
