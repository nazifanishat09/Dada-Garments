import 'package:dada_garments/view/widget/custom_appbar.dart';
import 'package:dada_garments/view/widget/custom_text_widget.dart';
import 'package:dada_garments/view/widget/productDetailsSlider.dart';
import 'package:dada_garments/view/widget/searchBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShd9p1g1emjQYdl7nVJdhs5XTaq25IJwKTGg&s",

    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAPkpUWtIzSlloPnhQVZjdSk3pHb2JxfhLHA&s",

    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsTgIxqyHUGcntqSWZQ-dsOwuEwuXKPs-j6g&s",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            CustomSearchBarWidget(),
            SizedBox(height: 10),
            PDetailsSlider(siderL: sList, sD: BorderRadius.circular(10)),
            SizedBox(height: 30),
            TextWidget(
              title: "Categories",
              fw: FontWeight.w900,
              fc: Color(0xff56504E),
              fs: 20,
            ),
            SizedBox(
              height: 110,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (c, i) => Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(2),
                      height: 109,
                      width: 90,
                      decoration: BoxDecoration(
                      image:DecorationImage(fit:BoxFit.fill ,
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZkVG9WVjMC_8Q5ZeDRnZEn__8hncpEwShxg&s")),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      child: Container(
                        height: 20,
                        width: 90,
                        decoration: BoxDecoration(color: Color(0xff201E1FCF)),
                        child: Center(
                          child: TextWidget(
                            title: "Women’s 2",
                            fs: 12,
                            fw: FontWeight.w600,
                            fc: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
