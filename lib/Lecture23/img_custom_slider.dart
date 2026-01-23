import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class ImgCustomSlider extends StatefulWidget {
  const ImgCustomSlider({super.key});

  @override
  State<ImgCustomSlider> createState() => _ImgCustomSliderState();
}

class _ImgCustomSliderState extends State<ImgCustomSlider> {
  static const List<String> sampleImages = [
    'https://img.freepik.com/free-photo/lovely-woman-vintage-outfit-expressing-interest-outdoor-shot-glamorous-happy-girl-sunglasses_197531-11312.jpg',
    'https://img.freepik.com/free-photo/shapely-woman-vintage-dress-touching-her-glasses-outdoor-shot-interested-relaxed-girl-brown-outfit_197531-11308.jpg',
    'https://img.freepik.com/premium-photo/cheerful-lady-brown-outfit-looking-around-outdoor-portrait-fashionable-caucasian-model-with-short-wavy-hairstyle_197531-25791.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // FanCarouselImageSlider.sliderType1(
          //   imagesLink: sampleImages,
          //   isAssets: false,
          //   autoPlay: false,
          //   sliderHeight: 400,
          //   showIndicator: true,
          // ),

          FanCarouselImageSlider.sliderType2(
            imagesLink: sampleImages,
            isAssets: false,
            autoPlay: false,
            sliderHeight: 300,
            currentItemShadow: const [],
            sliderDuration: const Duration(milliseconds: 200),
            imageRadius: 0,
            slideViewportFraction: 1.2,
          ),
        ],
      ),
    );
  }
}
