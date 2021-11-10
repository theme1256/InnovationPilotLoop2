import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import '../main.dart';
import '../widgets/empty_appbar.dart';
import '../widgets/bottom_button.dart';

class SigninScreen extends StatefulWidget {
  @override
  SigninScreenState createState() => new SigninScreenState();
}

class SigninScreenState extends State<SigninScreen> {
  void _login(context) async {
    output("Signing in");
    Route route = CupertinoPageRoute(builder: (context) => HomeScreen());
    Navigator.pushReplacement(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
          child: Column(
            children: [
              SizedBox(
                height: 192.0,
                child: Image.asset(
                  "assets/logo.jpg", 
                  height: 96.0, 
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Welcome,", 
                  style: TextStyle(fontSize: 24.0),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Sign in to continue", 
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: BottomButton(
        text: "Sign In",
        callback: _login,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: null,
    );
  }
}