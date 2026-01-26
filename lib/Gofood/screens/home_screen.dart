import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Text("flexibleSpace"),
        ),
        backgroundColor: Colors.amber,
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: Text("Bottom"),
        ),
        // leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.settings), Icon(Icons.logout)],
      ),

      //2
      body: Center(
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text("Your name is mohammed"),
                content: Text("Content"),
                icon: Icon(Icons.info),
                actions: [
                  TextButton(onPressed: () {}, child: Text("Done")),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancle"),
                  ),
                ],
              ),
            );
          },
          child: Text("Git info"),
        ),
      ),
      //3
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showModalBottomSheet(
      //       backgroundColor: Colors.amber.shade50,
      //       isScrollControlled: true,
      //       context: context,
      //       builder: (context) {
      //         return Column(
      //           children: [
      //             customListTile(Icons.facebook_outlined, "Facebook", () {}),
      //             customListTile(Icons.telegram_outlined, "telgram", () {}),
      //             customListTile(Icons.tiktok, "Tiktok", () {}),
      //             customListTile(Icons.facebook_outlined, "Facebook", () {}),
      //             customListTile(Icons.telegram_outlined, "telgram", () {}),
      //             customListTile(Icons.tiktok, "Tiktok", () {}),
      //             customListTile(Icons.facebook_outlined, "Facebook", () {}),
      //             customListTile(Icons.telegram_outlined, "telgram", () {}),
      //             customListTile(Icons.tiktok, "Tiktok", () {}),
      //             TextButton(
      //               onPressed: () {
      //                 Navigator.pop(context);
      //               },
      //               child: Text("Close"),
      //             ),
      //           ],
      //         );
      //       },
      //     );
      //   },
      //   backgroundColor: Colors.blue,
      //   child: Icon(Icons.add),
      // ),
      // //4
      // floatingActionButtonLocation: .endDocked,
      //5.1
      drawer: Drawer(
        surfaceTintColor: Colors.amber,
        width: 400,
        child: Column(
          children: [
            SizedBox(height: 50),
            CircleAvatar(radius: 70),
            Text("Mohammed"),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            customListTile((Icons.person), "Profile information", () {}),
            customListTile((Icons.settings), "Settings", () {}),
            customListTile((Icons.logout), "Logout", () {}),
            SizedBox(height: 20),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Close"),
            ),
            Spacer(),
            Text("Copywrite"),
            //ListTile
          ],
        ),
      ),

      //5.2
      // endDrawer: Drawer(),
      //6
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.deepOrange,
        backgroundColor: Colors.amber,
        currentIndex: index,

        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Fav"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }

  Widget customListTile(IconData icon, String txt, void Function()? onTap) {
    return ListTile(leading: Icon(icon), title: Text(txt), onTap: onTap);
  }
}