import 'package:december/Gofood/model/meal_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final MealModel mad;
  const DetailsScreen({super.key, required this.mad});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(title: Text(mad.name),
        actions: [Icon(Icons.search, color: Colors.grey)]),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: isLandScape
              ? SingleChildScrollView(
                child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .center,
                        children: [
                          Image.asset(
                            mad.img,
                            width: MediaQuery.of(context).size.width * 0.50,
                          ),
                          Column(
                            mainAxisAlignment: .center,
                            children: [
                              cardInfo(
                                Color(0xCDfd4754),
                                context,
                                0.25,
                                '${mad.price} \$',
                              ),
                              cardInfo(Colors.black, context, 0.25, 'Order Now'),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        mad.name,
                        style: Theme.of(
                          context,
                        ).textTheme.displaySmall!.copyWith(fontWeight: .bold),
                      ),
                
                      Text(
                        mad.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
              )
              : Column(
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
                    isLandScape ? SizedBox() : Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          cardInfo(
                            Color(0xCDfd4754),
                            context,
                            0.25,
                            '${mad.price} \$',
                          ),
                          cardInfo(Colors.black, context, 0.50, 'Order Now'),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget cardInfo(Color c, BuildContext context, double width, String txt) {
    return Card(
      color: c,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * width,
        child: Center(
          child: Text(
            txt,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: .bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
