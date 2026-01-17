import 'package:dada_garments/view/widget/custom_appbar.dart';
import 'package:dada_garments/view/widget/productDetailsSlider.dart';
import 'package:dada_garments/view/widget/searchBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sList =[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShd9p1g1emjQYdl7nVJdhs5XTaq25IJwKTGg&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAPkpUWtIzSlloPnhQVZjdSk3pHb2JxfhLHA&s",

    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsTgIxqyHUGcntqSWZQ-dsOwuEwuXKPs-j6g&s"





  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body:Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomSearchBarWidget(),
            SizedBox(height: 10,),
            PDetailsSlider(siderL: sList,sD: BorderRadius.circular(10),),
            Expanded(child: ListView.builder(itemBuilder: (context, index)=>Card()))
          ],
        ),

      ) ,
    );
  }
}
