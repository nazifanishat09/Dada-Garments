import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 38,left: 10,right: 10,bottom: 30),
        child: Column(
          children: [
            SearchBar(),
          ],
        ),
      ),
    );
  }
}


