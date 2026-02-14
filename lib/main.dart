import 'package:december/firebase_options.dart';
import 'package:december/responsive/layout_responsive.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xCDfe210e),
            foregroundColor: Colors.white,
          ),
        ),
        appBarTheme: AppBarThemeData(
          backgroundColor: Color(0xCDfe210e),
          foregroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          backgroundColor: Color(0xCDfe210e),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      // routes: {
      //   '/': (context) => NavScreenOne(),
      //   "/screen2": (context) => NavScreenTwo(),
      //   "/screen3": (context) => NavScreenThree(),
      // },
      //initialRoute: '/',
      debugShowCheckedModeBanner: false,
      home: LayoutResponsive(),
    );
  }
}
      //home:HomeScreen()
      //home:TextReview()
      //home:RichTextPage()
      //home:ContainerLec()
      //home:IconWidget()
      //home:ScreenCall1()
      //home:Task()
      //home:ImageWidget()
      //home:ImageInContainer()
      //home:Buttons()
      //home:TaskButtons()
      //home:ColorsClass()
      //home:Task22()
      //home:Training()
      //home:ListViewClass()
      //home:TaskIndex()
      //home: TaskGrid(),
      //home:ListViewAdvance(),
      //home: GridViewAdvance(),
      //home: Stack25(),
      //home: NavScreenOne(),
      //home: FormClass(),
      //home:TaskStack()
      //home:Nav()
      //home:ImgSlider()
      //home:ImgCustomSlider()
      //home:TimeAnddate()
      //home:Time()
      //home: DateTime33(),
      