import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class PDetailsSlider extends StatelessWidget {
  const PDetailsSlider({
    super.key,
    required this.siderL,  this.sD,
  });

  final List<String> siderL;
  final BorderRadius? sD;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180.0,
        viewportFraction: 1,
        autoPlay: true,
      ),
      items: siderL.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0,),
              decoration: BoxDecoration(
                borderRadius: sD ,
               image: DecorationImage(
                  
                  fit: BoxFit.fill,
                  image: NetworkImage("${i}"),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}