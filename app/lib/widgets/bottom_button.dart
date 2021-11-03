import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final double padding;
  final Color color;
  final callback;
  final bool active;

  BottomButton({
    @required this.text,
    this.padding = 16.0,
    this.color = Colors.black54,
    this.callback,
    this.active = true,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
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