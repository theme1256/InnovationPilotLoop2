import 'package:app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/empty_appbar.dart';

class ItemMoveScreen extends StatefulWidget {
  ItemMoveScreen({Key key}) : super(key: key);

  @override
  ItemMoveScreenState createState() => ItemMoveScreenState();
}

class ItemMoveScreenState extends State<ItemMoveScreen> {
  void _move(context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vibration Splitter Orb",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Current location: 420",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 12),
            CupertinoTextField(
              placeholder: "New location",
              padding: EdgeInsets.all(12.0),
              textInputAction: TextInputAction.none,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 6),
            Button(
              text: "Move",
              padding: 0,
              callback: _move,
            ),
          ],
        ),
      ),
    );
  }
}