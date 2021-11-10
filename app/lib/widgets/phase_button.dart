import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhaseButton extends StatelessWidget {
  final Color color;
  final callback;
  final String txt;
  final IconData icon;
  final String page;

  PhaseButton({
    @required this.icon,
    @required this.txt,
    @required this.page,
    @required this.color,
    @required this.callback,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(icon, size: 48, color: Colors.white,),
              // height: 96.0,
              alignment: Alignment.center,
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                txt,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () => { callback(context, page) },
    );
  }
}