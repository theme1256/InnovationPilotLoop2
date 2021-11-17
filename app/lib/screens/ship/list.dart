import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/ship_item_line.dart';
import '../../widgets/horizontal_line.dart';
import '../../widgets/bottom_button.dart';
import '../../widgets/empty_appbar.dart';
import '../../widgets/process_header.dart';
import 'item.dart';

class ShipListScreen extends StatefulWidget {
  ShipListScreen({Key key}) : super(key: key);

  @override
  ShipListScreenState createState() => ShipListScreenState();
}

class ShipListScreenState extends State<ShipListScreen> {
  void _finish(context) {
    Navigator.pop(context);
  }
  
  void _info(context, id) {
    Route route = CupertinoPageRoute(builder: (context) => ShipItemScreen());
    Navigator.push(context, route);
  }

  Map<int, Map<String, String>> items = {
    0: {"Name": "Vibration Splitter Orb", "Count": "2", "Location": "110", "Picked": "yes"},
    1: {"Name": "Noise Disperser Screw", "Count": "10", "Location": "120", "Picked": "yes"},
    2: {"Name": "Entropy Reduction Pipe", "Count": "3", "Location": "130", "Picked": "no"},
    3: {"Name": "Vacuum Induction Tube", "Count": "2", "Location": "140", "Picked": "no"},
  };

  @override
  Widget build(BuildContext context) {
    List<Widget> lines() {
      List<Widget> rtn = List<Widget>();
      items.forEach((key, value) {
        rtn.add(ShipItemLine(
          text: value["Name"],
          subtext: "Count: ${value["Count"]}, Location: ${value["Location"]}",
          id: "$key",
          callback: _info,
          ticked: value["Picked"] == "yes",
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
                subtitle: "Select an item to pack it",
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
        text: "Mark packed",
        callback: _finish,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: null,
    );
  }
}