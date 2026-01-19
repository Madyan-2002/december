import 'package:flutter/material.dart';

class TaskStack extends StatelessWidget {
  const TaskStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        image: DecorationImage(
                          image: NetworkImage(
                            ("https://media.cnn.com/api/v1/images/stellar/prod/200825155834-lionel-messi-0307-file.jpg?q=w_3000,h_2000,x_0,y_0,c_fill"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Lionel Messi",
                      style: TextStyle(fontSize: 15, fontWeight: .bold),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => Container(
                          margin: const EdgeInsets.all(6),
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20), 

                    SizedBox(
                      height: 400,
                      child: Card(
                        elevation: 25,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 3,
                            // mainAxisSpacing: 5,
                            // crossAxisSpacing: 5,
                            physics: const NeverScrollableScrollPhysics(),
                            children:
                                [
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7',
                                  '8',
                                  '9',
                                  '',
                                  '0',
                                  '⌫',
                                ].map((e) {
                                  return Center(
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  );
                                }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 
}
