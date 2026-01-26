import 'package:december/Gofood/screens/cart_page.dart';
import 'package:december/Gofood/screens/fav_page.dart';
import 'package:december/Gofood/screens/home_page.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> screens = [HomePage(), FavPage(), CartPage()];

  Map<String, dynamic> infoForScreen = {
    'Home': Icon(Icons.home),
    'Favorite': Icon(Icons.favorite),
    'Cart': Icon(Icons.shopping_cart),
  };
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 35),
          child: SizedBox(),
        ),
        title: ListTile(
          title: Text("GoFooD" ,style: TextStyle(
              fontFamily: 'font2',
              fontSize: 30,
              fontWeight: .bold,
              color: Colors.white,
            ),),
          subtitle: Text("Your favorite food"),
          trailing: CircleAvatar(backgroundColor: Colors.white),
        ),
      ),

      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: infoForScreen.entries
            .map((i) => BottomNavigationBarItem(icon: i.value, label: i.key))
            .toList(),
      ),
    );
  }
}
