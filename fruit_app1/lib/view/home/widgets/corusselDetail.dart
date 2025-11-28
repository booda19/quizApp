import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/resource/HorizontalCardList.dart';

class Corusseldetail extends StatelessWidget {
  const Corusseldetail({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: HorizontalCardList.items.length,
      itemBuilder: (BuildContext context, int itemIndex,
          int pageViewIndex) =>
          SizedBox(
            child: Image.asset(
              HorizontalCardList.items[itemIndex]['image'],
              fit: BoxFit.cover,
            ),
          ),
      options: CarouselOptions(
          height: 140,
          aspectRatio: 1,
          viewportFraction: .5,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayCurve: Curves.linear,
          enlargeCenterPage: true),
    );
  }
}
