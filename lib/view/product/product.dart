import 'package:dada_garments/view/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

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
            //SearchBar(),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                  childAspectRatio: .6,
                ),
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      spacing: 10,
                      children: [
                        Container(
                          height: 156,
                          width: 173,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                "https://i5.walmartimages.com/seo/Dad-Shirts-for-Men-Funny-DADA-Letter-Print-Graphic-Tshirts-Father-Daddy-Papa-Gifts-Tee-Tops_7f527764-b802-4171-8e35-c23a1f1c9dd3.12cea6b8c0349cff8da74929fbe3540a.jpeg",
                              ),
                            ),
                          ),
                        ),
                        TextWidget(title: 'Party Borkha Abaya Koliza', fs: 12),
                        Row(
                          spacing: 5,
                          children: [
                            TextWidget(title: "2880", fs: 14,fw: FontWeight.w500,),
                            TextWidget(
                              title: "3200",
                              tD: TextDecoration.lineThrough,
                              fs: 12,
                              fc: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 85,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Center(
                            child: TextWidget(title: "Add To Cart", fs: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
