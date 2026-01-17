import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_garments/view/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../widget/custom_appbar.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String> siderL = [
    "https://cdn6.f-cdn.com/contestentries/1211932/19093412/5a409e29ca89f_thumb900.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNWuBHMctBqp5pdvUnK65b9xXcsT9wHSSfHg&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 180.0,
                viewportFraction: .9,
                autoPlay: true,
              ),
              items: siderL.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("${i}"),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(
                  title: "Party Borkha Abaya Black",
                  fs: 24,
                  fw: FontWeight.w900,
                ),
                CircleAvatar(
                  radius: 25,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
