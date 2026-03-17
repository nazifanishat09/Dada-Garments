import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({
    super.key,
    this.bc,
    this.bImage,
    this.borderC,
    this.ontep,
  });
  final Color? bc;
  final Color? borderC;

  final Widget? bImage;
  final VoidCallback? ontep;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 400,
      decoration: BoxDecoration(
        color: bc ?? Color(0xffF4A758),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderC ?? Color(0xffF07F0F)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5,
        children: [
          bImage ?? SizedBox(),

          CircularProgressIndicator(color: Colors.white),
        ],
      ),
    );
  }
}
