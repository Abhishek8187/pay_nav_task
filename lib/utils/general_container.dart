import 'package:flutter/material.dart';

class GeneralContainer extends StatelessWidget {
  double height;
  double width;
  Color color;
  double borderRadius;
  String text;
  double fontSize;
  FontWeight fontWeight;
  Color fontColor;

  GeneralContainer({
    required this.height,
    required this.width,
    required this.color,
    required this.borderRadius,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.fontColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderRadius)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: fontColor
        ),
      )),
    );
  }
}
