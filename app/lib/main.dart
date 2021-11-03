import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

import 'app.dart';
import 'app_state_container.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

void main() {
  runApp(AppStateContainer(
    child: AppRootWidget(),
  ));
}

Future<void> output(msg) async {
  AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  if (!androidInfo.isPhysicalDevice || kDebugMode)
    print(msg);
}