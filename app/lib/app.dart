import 'package:app/screens/signin.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'app_state_container.dart';
import 'models/app_state.dart';
import 'models/themes/COBOD.dart';
// import 'screens/start.dart';

// ignore: must_be_immutable
class AppRootWidget extends StatelessWidget {
  AppState appState;

  final _routes = {
    '/': (BuildContext context) => new SigninScreen(),
  };

  @override
  Widget build(BuildContext context) {
    this.appState = AppStateContainer.of(context).state;

    return new MaterialApp(
      title: 'COBOD',
      theme: cobodThemeData,
      routes: _routes,
      navigatorObservers: [routeObserver],
    );
  }
}
