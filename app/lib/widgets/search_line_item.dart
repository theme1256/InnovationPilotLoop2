import 'package:flutter/material.dart';

class SearchLineItem extends StatelessWidget {
  final String text;
  final callback;
  final String id;

  SearchLineItem({
    this.text,
    this.callback,
    this.id,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            text,
            textAlign: TextAlign.left,
          ),
        ),
      ),
      onTap: callback == null ? () => {} : () => { callback(context, id, text) },
    );
  }
}