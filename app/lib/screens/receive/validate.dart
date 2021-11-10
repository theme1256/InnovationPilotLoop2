import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/receive_item_line.dart';
import '../../widgets/horizontal_line.dart';
import '../../widgets/bottom_button.dart';
import '../../widgets/empty_appbar.dart';
import '../../widgets/process_header.dart';
import 'item.dart';

class ReceiveValidateScreen extends StatefulWidget {
  ReceiveValidateScreen({Key key}) : super(key: key);

  @override
  ReceiveValidateScreenState createState() => ReceiveValidateScreenState();
}

class ReceiveValidateScreenState extends State<ReceiveValidateScreen> {
  void _finish(context) {
    Navigator.pop(context);
  }
  
  void _receive(context, id) {
    Route route = CupertinoPageRoute(builder: (context) => ReceiveItemScreen());
    Navigator.push(context, route);
  }

  Map<int, Map<String, String>> items = {
    0: {"Name": "Vibration Splitter Orb", "Count": "5"},
    1: {"Name": "Noise Disperser Screw", "Count": "1000"},
    2: {"Name": "Entropy Reduction Pipe", "Count": "10"},
    3: {"Name": "Vacuum Induction Tube", "Count": "1"},
  };

  @override
  Widget build(BuildContext context) {
    List<Widget> lines() {
      List<Widget> rtn = List<Widget>();
      items.forEach((key, value) {
        rtn.add(ReceiveItemLine(
          text: value["Name"],
          subtext: value["Count"],
          id: "$key",
          callback: _receive,
        ));
        rtn.add(HorizontalLine(color: Colors.black26,));
      });
      return rtn;
    }

    return Scaffold(
      appBar: EmptyAppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              child: ProcessHeader(
                title: "Validate content",
                subtitle: "Make sure that all items are there",
              ),
            ),
            HorizontalLine(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: lines(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: BottomButton(
        text: "Finish",
        callback: _finish,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: null,
    );
  }
}