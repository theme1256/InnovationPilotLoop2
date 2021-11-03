import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  HorizontalLine({
    this.width = double.infinity,
    this.height = 1.0,
    this.color = Colors.black54,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Container(color: color),
    );
  }
}