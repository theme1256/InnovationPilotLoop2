import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/bottom_button.dart';
import '../../widgets/empty_appbar.dart';
import '../../widgets/process_header.dart';

class ReceiveItemScreen extends StatefulWidget {
  ReceiveItemScreen({Key key}) : super(key: key);

  @override
  ReceiveItemScreenState createState() => ReceiveItemScreenState();
}

class ReceiveItemScreenState extends State<ReceiveItemScreen> {
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
              subtitle: "This item was in the package?",
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