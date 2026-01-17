import 'package:dada_garments/view/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../widget/productCardWidget.dart';
import '../widget/searchBar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 38,
          left: 10,
          right: 10,
          bottom: 30,
        ),
        child: Column(
          children: [
            CustomSearchBarWidget(),
            Expanded(
              child: GridView.builder(

                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                  childAspectRatio: .6,
                ),
                itemBuilder: (context, index) => ProductCardWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


