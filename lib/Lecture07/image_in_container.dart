import 'package:flutter/material.dart';

class ImageInContainer extends StatelessWidget {
  const ImageInContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> category = [
      'All',
      'Category',
      'Top',
      'Recommended',
      'Trend',
      'Men',
      'Women',
      'Shoes',
      'kids',
      'Toys',
    ];

    final List<String> img = [
      "https://thumbs.dreamstime.com/b/alpha-wolf-head-logo-crescent-moon-background-featuring-piercing-gaze-mysterious-vibe-ideal-adventure-brands-377379079.jpg",
      "https://cdn.dribbble.com/userupload/44361796/file/8cddf626cc9582232a3523b3b9fe0227.png?resize=400x0",
      "https://cdn.dribbble.com/userupload/42080287/file/original-c58b4eeb67400823a7e8c4cf193ac26f.jpg?format=webp&resize=400x300&vertical=center",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKYCAfOV8ZlwZcuRro0X7ndt3MZeyIj1uWWA&s",
      "https://t3.ftcdn.net/jpg/07/04/95/22/360_F_704952202_aQWephYLdkm6HxOPRYDs29d7FCSgU9mt.jpg",
      "https://wootandhammy.com/cdn/shop/articles/what-does-the-moon-symbolize.jpg?v=1569156055"
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // ---------- Search & Notification ----------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xCDc8c3c9),
                      ),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.search, color: Color(0xCDfa9802)),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Search",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xCDc8c3c9),
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // ---------- Banner Image ----------
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://d2a44wklwtsxx7.cloudfront.net/wp-content/uploads/sites/15/Moon-Phases-Meaning.webp",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // ---------- Category List ----------
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: customContainer(category[index]),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                // ---------- Images ----------
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: img.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: customPhoto(img[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ---------- Category Chip ----------
  Widget customContainer(String txt) {
    return Container(
      width: 80,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xCDc8c3c9),
      ),
      child: Center(
        child: Text(
          txt,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  // ---------- Image Card ----------
  Widget customPhoto(String img) {
    return Container(
      width: 130,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
      ),
    );
  }
}
