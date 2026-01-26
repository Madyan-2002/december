import 'package:december/Gofood/model/meal_model.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  MealModel mad;
  DetailsScreen({super.key, required this.mad});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Icon(Icons.search, color: Colors.grey)]),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Image.asset(mad.img, width: double.infinity),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  mad.name,
                  style: Theme.of(
                    context,
                  ).textTheme.displaySmall!.copyWith(fontWeight: .bold),
                ),
              ),
              Text(
                mad.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Card(
                      color: Color(0xCDfd4754),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Center(
                          child: Text(
                            '${mad.price} \$',
                            style: Theme.of(context).textTheme.headlineSmall!
                                .copyWith(
                                  fontWeight: .bold,
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.black54,
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Center(
                          child: Text(
                            "Order now",
                            style: Theme.of(context).textTheme.headlineSmall!
                                .copyWith(
                                  fontWeight: .bold,
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}