import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/empty_appbar.dart';
import '../widgets/process_header.dart';
import '../widgets/phase_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  void _nextPage(context, page) {
    Route route = CupertinoPageRoute(builder: (context) => page);
    Navigator.push(context, route);
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
              title: "Select action",
              subtitle: "What do you want to do?",
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  PhaseButton(
                    icon: Icons.move_to_inbox,
                    txt: "Receive package", 
                    color: Color.fromARGB(255, 101, 128, 255), 
                    callback: _nextPage,
                    page: HomeScreen(),
                  ),
                  PhaseButton(
                    icon: Icons.info_outline,
                    txt: "Scan item",
                    color: Color.fromARGB(255, 68, 179, 171),
                    callback: _nextPage,
                    page: HomeScreen(),
                  ),
                  PhaseButton(
                    icon: Icons.backup,
                    txt: "Pack for shipment",
                    color: Color.fromARGB(255, 243, 196, 46),
                    callback: _nextPage,
                    page: HomeScreen(),
                  ),
                  PhaseButton(
                    icon: Icons.mail_outline,
                    txt: "Scan order",
                    color: Color.fromARGB(255, 238, 104, 81),
                    callback: _nextPage,
                    page: HomeScreen(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}