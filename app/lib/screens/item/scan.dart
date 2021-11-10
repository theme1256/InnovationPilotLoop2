import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/bottom_button.dart';
import '../../widgets/empty_appbar.dart';
import '../../widgets/process_header.dart';
import 'info.dart';

class ItemScanScreen extends StatefulWidget {
  ItemScanScreen({Key key}) : super(key: key);

  @override
  ItemScanScreenState createState() => ItemScanScreenState();
}

class ItemScanScreenState extends State<ItemScanScreen> {
  void _go(context) {
    Route route = CupertinoPageRoute(builder: (context) => ItemInfoScreen());
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
            ProcessHeader(
              title: "Scan item",
              subtitle: "Scan an item to view info",
            ),
            SizedBox(height: 12),
            CupertinoTextField(
              placeholder: "Manual input",
              padding: EdgeInsets.all(12.0),
              textInputAction: TextInputAction.none,
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
      floatingActionButton: BottomButton(
        text: "Go",
        callback: _go,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: null,
    );
  }
}