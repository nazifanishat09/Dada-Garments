import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    this.fw,
    this.fs,
    this.maxline,
    this.fc,
    required this.title, this.tD,
  });
  final FontWeight? fw;
  final double? fs;
  final Color? fc;
  final int? maxline;
  final String title;
  final TextDecoration? tD;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title ",
      style: TextStyle(
        fontSize:fs,
        fontWeight: fw,
        color: fc,
        decoration: tD ?? TextDecoration.none,

      ),
    );
  }
}
