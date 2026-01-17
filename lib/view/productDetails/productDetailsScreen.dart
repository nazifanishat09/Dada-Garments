import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_garments/get_x/productDetailsScreen/productDetailsScreen.dart';
import 'package:dada_garments/view/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
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
            SizedBox(height: 15),

            TextWidget(
              title: "Party Borkha Abaya Black",
              fs: 28,
              fw: FontWeight.w900,
            ),
            SizedBox(height: 10),
            TextWidget(title: "SKU : AP-SPT-MESH",  fs:15, fw: FontWeight.w800),
            TextWidget(
              title: "Brand : Active GEAR",
              fs:15,
              fw: FontWeight.w800,
            ),
            TextWidget(
              title: "Category : Head CAP",
              fs:15,
              fw: FontWeight.w800,
            ),
            TextWidget(title: "Stock : 500 pcs", fs:15, fw: FontWeight.w800),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,

                  fontWeight: FontWeight.w900,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,

                  fontWeight: FontWeight.w900,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,

                  fontWeight: FontWeight.w900,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,

                  fontWeight: FontWeight.w900,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,

                  fontWeight: FontWeight.w900,
                ),SizedBox(width: 10,),
                TextWidget(
                  title: "(102 Review)",
                  fs: 20,
                  fw: FontWeight.w800,
                ),
              ],
            ),


            Row(
              spacing: 10,
              children: [
                TextWidget(title: "Price :",  fs:15, fw: FontWeight.w800),
                TextWidget(title: "2880", fs:15, fw: FontWeight.w800),

                TextWidget(
                  title: "3200",
                  fs: 13,
                  tD: TextDecoration.lineThrough,
                  fc: Colors.grey,
                ),
              ],
            ),
            TextWidget(title: "Details",  fs:15, fw: FontWeight.w800),
            TextWidget(title: "Details",  fs:15, fw: FontWeight.w800),
          ],
        ),
      ),
    );
  }
}
