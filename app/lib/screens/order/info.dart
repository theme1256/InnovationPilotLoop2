import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/receive_item_line.dart';
import '../../widgets/horizontal_line.dart';
import '../../widgets/bottom_button.dart';
import '../../widgets/empty_appbar.dart';
import '../../widgets/process_header.dart';

class OrderInfoScreen extends StatefulWidget {
  OrderInfoScreen({Key key}) : super(key: key);

  @override
  OrderInfoScreenState createState() => OrderInfoScreenState();
}

class OrderInfoScreenState extends State<OrderInfoScreen> {
  void _finish(context) {
    Navigator.pop(context);
  }
  
  void _info(context, id) {
    // Route route = CupertinoPageRoute(builder: (context) => ReceiveItemScreen());
    // Navigator.push(context, route);
  }

  Map<int, Map<String, String>> items = {
    0: {"Name": "Vibration Splitter Orb", "Count": "2", "Location": "110"},
    1: {"Name": "Noise Disperser Screw", "Count": "10", "Location": "120"},
    2: {"Name": "Entropy Reduction Pipe", "Count": "3", "Location": "130"},
    3: {"Name": "Vacuum Induction Tube", "Count": "2", "Location": "140"},
  };

  @override
  Widget build(BuildContext context) {
    List<Widget> lines() {
      List<Widget> rtn = List<Widget>();
      items.forEach((key, value) {
        rtn.add(ReceiveItemLine(
          text: value["Name"],
          subtext: "Count: ${value["Count"]}, Location: ${value["Location"]}",
          id: "$key",
          callback: _info,
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
                title: "This order contains",
                subtitle: "",
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
        text: "Start packing",
        callback: _finish,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: null,
    );
  }
}