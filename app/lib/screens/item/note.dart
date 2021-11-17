import 'package:app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/empty_appbar.dart';

class ItemNoteScreen extends StatefulWidget {
  ItemNoteScreen({Key key}) : super(key: key);

  @override
  ItemNoteScreenState createState() => ItemNoteScreenState();
}

class ItemNoteScreenState extends State<ItemNoteScreen> {
  void _note(context) {
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
            CupertinoTextField(
              placeholder: "Add note",
              padding: EdgeInsets.all(12.0),
              textInputAction: TextInputAction.none,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 6),
            Button(
              text: "Add",
              padding: 0,
              callback: _note,
            ),
          ],
        ),
      ),
    );
  }
}