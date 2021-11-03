import 'package:flutter/material.dart';

final ThemeData cobodThemeData = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: MaterialColor(COBOD.blue[500].value, COBOD.blue),
  primaryColor: COBOD.blue[500],
  primaryColorBrightness: Brightness.dark,
  accentColor: COBOD.orange[500],
  accentColorBrightness: Brightness.light,
);

class COBOD {
  COBOD._(); // this basically makes it so you can instantiate this class

  static const Color textColor = Color(0xFFFFFFFF);

  static const Map<int, Color> blue = const <int, Color>{
    50: const Color(0xFFE0EFF1),
    100: const Color(0xFFB3D7DD),
    200: const Color(0xFF80BDC6),
    300: const Color(0xFF4DA2AF),
    400: const Color(0xFF268E9D),
    500: const Color(0xFF007A8C),
    600: const Color(0xFF007284),
    700: const Color(0xFF006779),
    800: const Color(0xFF005D6F),
    900: const Color(0xFF004A5C),
  };
  static const Map<int, Color> blueAccent = const <int, Color>{
    100: const Color(0xFF8DE4FF),
    200: const Color(0xFF5AD8FF),
    300: const Color(0xFF27CCFF),
    400: const Color(0xFF0EC6FF),
  };

  static const Map<int, Color> orange = const <int, Color>{
    50: const Color(0xFFFEEFE4),
    100: const Color(0xFFFCD6BC),
    200: const Color(0xFFFABB90),
    300: const Color(0xFFF7A064),
    400: const Color(0xFFF68B42),
    500: const Color(0xFFF47721),
    600: const Color(0xFFF36F1D),
    700: const Color(0xFFF16418),
    800: const Color(0xFFEF5A14),
    900: const Color(0xFFEC470B),
  };
  static const Map<int, Color> orangeAccent = const <int, Color>{
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFE9E3),
    300: const Color(0xFFFFC2B0),
    400: const Color(0xFFFFAE96),
  };
}
