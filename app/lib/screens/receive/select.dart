import 'package:app/widgets/receive_item_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/horizontal_line.dart';
import '../../widgets/empty_appbar.dart';
import '../../main.dart';
import 'validate.dart';

class ReceiveSelectScreen extends StatefulWidget {
  @override
  ReceiveSelectScreenState createState() => new ReceiveSelectScreenState();
}

class ReceiveSelectScreenState extends State<ReceiveSelectScreen> {
  void _receive(context, id) async {
    output("Signing in");
    Route route = CupertinoPageRoute(builder: (context) => ReceiveValidateScreen());
    Navigator.pushReplacement(context, route);
  }

  Map<int, Map<String, String>> incoming = {
    0: {"from": "Russia", "via": "GLS"},
    1: {"from": "Germany", "via": "PostNord"},
    2: {"from": "Sweden", "via": "DLS"},
    3: {"from": "Denmark", "via": "TJW"},
  };

  @override
  Widget build(BuildContext context) {
    List<Widget> lines() {
      List<Widget> rtn = List<Widget>();
      incoming.forEach((key, value) {
        rtn.add(ReceiveItemLine(
          text: value["from"],
          subtext: value["via"],
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
          children: [
            SizedBox(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                child: CupertinoTextField(
                  placeholder: "Search",
                  padding: EdgeInsets.all(8.0),
                ),
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
    );
  }
}