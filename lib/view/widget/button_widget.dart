import 'package:flutter/material.dart';

import 'custom_text_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 400,
      decoration: BoxDecoration(
        color: Color(0xffF4A758),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffF07F0F)),
      ),
      child: Center(
        child: TextWidget(
          title: "Log In",
          fs: 20,
          fw: FontWeight.bold,
        ),
      ),
    );
  }
}
