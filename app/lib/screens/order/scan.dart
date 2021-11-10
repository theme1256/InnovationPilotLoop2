import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/bottom_button.dart';
import '../../widgets/empty_appbar.dart';
import '../../widgets/process_header.dart';
import 'info.dart';

class OrderScanScreen extends StatefulWidget {
  OrderScanScreen({Key key}) : super(key: key);

  @override
  OrderScanScreenState createState() => OrderScanScreenState();
}

class OrderScanScreenState extends State<OrderScanScreen> {
  void _go(context) {
    Route route = CupertinoPageRoute(builder: (context) => OrderInfoScreen());
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
              title: "Scan order",
              subtitle: "Scan an order to view info",
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