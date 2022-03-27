import 'package:flutter/material.dart';

class ColorsApp {
  static Color mainColor = const Color(0xFF8B00FF);
  static Color mainColor10 = const Color(0x108B00FF);
  static Color secondColor = const Color(0xFF00d394);
  static Color transparent = const Color(0x00FFFFFF);
  static Color white = const Color(0xFFFFFFFF);
  static Color white50 = const Color(0x50FFFFFF);
  static Color black = const Color(0xFF000000);
  static Color black50 = const Color(0x50000000);
  static Color grey = const Color(0xFFE8E8E8);
}

MaterialColor configColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red,
      g = color.green,
      b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}