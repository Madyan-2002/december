import 'package:flutter/material.dart';

class TaskStack extends StatelessWidget {
  const TaskStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),

        title: const Text("Sign in", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 130, 14, 150),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://media.cnn.com/api/v1/images/stellar/prod/200825155834-lionel-messi-0307-file.jpg?q=w_3000,h_2000,x_0,y_0,c_fill",
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            "Lionel Messi",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
            ],
          ),

          const SizedBox(height: 45),

          SizedBox(
            height: 370,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(height: 200, color: Colors.purple),
                ),

                Positioned(
                  bottom: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(0, 10),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    width: 250,
                    height: 320,

                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 3,

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
                                  style: TextStyle(
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
        ],
      ),
    );
  }

  static Widget customContainer() {
    return Container(
      width: 21,
      height: 21,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        shape: BoxShape.circle,
      ),
    );
  }
}
