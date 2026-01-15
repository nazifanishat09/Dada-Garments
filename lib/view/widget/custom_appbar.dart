import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CustomAppBar({this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Colors.white,
      alignment: Alignment.center,
      child: Padding(
        padding:const EdgeInsets.only(top: 20, right: 25, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell (onTap: (){Navigator.pop(context);},
              child: CircleAvatar(
                radius: 25,
                child: Image(image: AssetImage("assets/image/back arrow.png")),
              ),
            ),
            Image(image: AssetImage("assets/image/appber logo.png")),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
