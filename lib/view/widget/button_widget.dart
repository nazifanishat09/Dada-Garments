import 'dart:developer';

import 'package:flutter/material.dart';

import 'custom_text_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, this.bc, required this.bText, this.bImage, this.borderC, this.ontep,
  });
  final Color? bc;
  final Color? borderC;
  final String bText;
  final Widget? bImage;
  final VoidCallback? ontep;



  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: ontep,
      child: Container(

        height: 55,
        width: 400,
        decoration: BoxDecoration(
          color: bc ?? Color(0xffF4A758),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:borderC ?? Color(0xffF07F0F)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            bImage ??SizedBox(),

            TextWidget(
              title: "$bText",
              fs: 15,
              fw: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
