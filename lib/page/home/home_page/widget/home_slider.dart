import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          AssetImage('assets/image/img_banner/banner$i.png'))),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        height: 200.0,
        autoPlay: true,
      ),
    );
  }
}
