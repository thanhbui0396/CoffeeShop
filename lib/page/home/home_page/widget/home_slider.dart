import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(
        3,
        (i) => Container(
          height: 194.h,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/img_banner/banner$i.png'),
            ),
          ),
        ),
      ),
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
      ),
    );
  }
}
