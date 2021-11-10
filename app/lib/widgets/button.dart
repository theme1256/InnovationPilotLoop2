import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final double padding;
  final Color color;
  final callback;
  final bool active;
  final double width;

  Button({
    @required this.text,
    this.padding = 16.0,
    this.color = Colors.black54,
    this.callback,
    this.width = double.infinity,
    this.active = true,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width,
      child: Container(
        padding: EdgeInsets.only(left: padding, right: padding, bottom: padding),
        child: CupertinoButton.filled(
          child: Text(text,), 
          onPressed: active ? () => { callback(context) } : null,
        ),
      ),
    );
  }
}