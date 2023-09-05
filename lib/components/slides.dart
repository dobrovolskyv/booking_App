import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slides extends StatefulWidget {
  // var slidesImg = [];

  const Slides({super.key});

  @override
  State<Slides> createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
  // late final List myItems;
  final  myItems = [
    Image(image: const AssetImage('./assets/images/img1.jpg')),
    Image(image: const AssetImage('./assets/images/img2.jpg')),
    Image(image: const AssetImage('./assets/images/img3.jpg')),
    Image.asset("assets/images/img1.jpg", fit:BoxFit.fill),
  ];

  int myCurrentIdnex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items:  myItems,
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 16/9,
              height: 257,
              autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  myCurrentIdnex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 10),
          AnimatedSmoothIndicator(
            activeIndex: myCurrentIdnex,
            count: myItems.length,
            effect: const SlideEffect(
                dotWidth: 10.0,
                dotHeight: 10.0,
                dotColor: Colors.black,
                activeDotColor: Colors.black,
                paintStyle: PaintingStyle.stroke),
          )
        ],
      ),
    );
  }
}

class string {
}
