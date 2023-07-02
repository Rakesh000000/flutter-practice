import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSliderPage extends StatefulWidget {
  const ImageSliderPage({super.key});

  @override
  State<ImageSliderPage> createState() => _ImageSliderPageState();
}

class _ImageSliderPageState extends State<ImageSliderPage> {
  final List<String> imgList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];
  CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image slider page"),
      ),
      body: Column(
        children: [
          CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(height: 100),
            items: imgList.map((i) {
              return Builder(builder: (BuildContext context) {
                return Image.asset(i);
              });
            }).toList(),
          ),
        ],
      ),
    );
  }
}
