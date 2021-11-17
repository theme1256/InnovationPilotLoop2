import 'package:flutter/material.dart';

class ShipItemLine extends StatelessWidget {
  final String text;
  final String subtext;
  final callback;
  final String id;
  final bool ticked;

  ShipItemLine({
    this.text,
    this.subtext,
    this.callback,
    this.id,
    this.ticked = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return this.ticked ?
      SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
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
                    Icon(
                      Icons.check
                    ),
                  ],
                ),
              ],
            ),
          ),
        ) :
      InkWell(
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
        onTap: this.callback == null ? () => {} : () => { this.callback(context, this.id) },
      );
  }
}