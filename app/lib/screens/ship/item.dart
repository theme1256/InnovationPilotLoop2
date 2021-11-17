import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/bottom_button.dart';
import '../../widgets/empty_appbar.dart';
import '../../widgets/process_header.dart';

class ShipItemScreen extends StatefulWidget {
  ShipItemScreen({Key key}) : super(key: key);

  @override
  ShipItemScreenState createState() => ShipItemScreenState();
}

class ShipItemScreenState extends State<ShipItemScreen> {
  void _accept(context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          children: [
            ProcessHeader(
              title: "Validate item",
              subtitle: "Have you packed this item?",
            ),
          ],
        ),
      ),
      floatingActionButton: BottomButton(
        text: "Yes",
        callback: _accept,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: null,
    );
  }
}