import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name(
      {required this.text,
      required this.textColor,
      required this.textSize,
      this.maxLines,
      this.textWeight,
      super.key});

  final String text;
  final Color textColor;
  final FontWeight? textWeight;
  final double textSize;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: textColor,
        fontWeight: textWeight,
        fontSize: textSize,
      ),
    );
  }
}
