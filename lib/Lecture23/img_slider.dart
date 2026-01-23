import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImgSlider extends StatefulWidget {
  const ImgSlider({super.key});

  @override
  State<ImgSlider> createState() => _ImgSliderState();
}

class _ImgSliderState extends State<ImgSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items: [
      Text('1'),
      Text('2'),
      Text('3'),
      Text('4'),
    ], options: CarouselOptions(

    ), 
    

    );
  }
}