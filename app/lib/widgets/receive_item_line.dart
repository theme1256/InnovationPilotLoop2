import 'package:flutter/material.dart';

class ReceiveItemLine extends StatelessWidget {
  final String text;
  final String subtext;
  final callback;
  final String id;

  ReceiveItemLine({
    this.text,
    this.subtext,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                textAlign: TextAlign.left,
              ),
              Text(
                subtext,
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
        ),
      ),
      onTap: callback == null ? () => {} : () => { callback(context, id) },
    );
  }
}