import 'package:flutter/material.dart';

class ProcessHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  ProcessHeader({
    @required this.title,
    @required this.subtitle,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w700
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}