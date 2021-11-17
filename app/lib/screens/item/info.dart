import 'package:app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../order/info.dart';
import '../../widgets/empty_appbar.dart';
import 'move.dart';
import 'note.dart';

class ItemInfoScreen extends StatefulWidget {
  ItemInfoScreen({Key key}) : super(key: key);

  @override
  ItemInfoScreenState createState() => ItemInfoScreenState();
}

class ItemInfoScreenState extends State<ItemInfoScreen> {
  void _move(context) {
    Route route = CupertinoPageRoute(builder: (context) => ItemMoveScreen());
    Navigator.push(context, route);
  }
  void _showOrder(context) {
    Route route = CupertinoPageRoute(builder: (context) => OrderInfoScreen());
    Navigator.pushReplacement(context, route);
  }
  void _addNote(context) {
    Route route = CupertinoPageRoute(builder: (context) => ItemNoteScreen());
    Navigator.push(context, route);
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
              "Location: 420",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 6),
            Button(
              text: "Move",
              padding: 0,
              callback: _move,
            ),
            SizedBox(height: 12),
            Text(
              "Part of order: 11",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 6),
            Button(
              text: "Show order",
              padding: 0,
              callback: _showOrder,
            ),
            SizedBox(height: 12),
            Text(
              "Notes:",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 6),
            Button(
              text: "Add note",
              padding: 0,
              callback: _addNote,
            ),
          ],
        ),
      ),
    );
  }
}