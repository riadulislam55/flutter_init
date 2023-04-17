import 'package:flutter/material.dart';

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}

MaterialColor toMaterialColor(int colorInt) {
  return MaterialColor(colorInt, {
    50: Color(colorInt).withOpacity(0.1),
    100: Color(colorInt).withOpacity(0.2),
    200: Color(colorInt).withOpacity(0.3),
    300: Color(colorInt).withOpacity(0.4),
    400: Color(colorInt).withOpacity(0.5),
    500: Color(colorInt).withOpacity(0.6),
    600: Color(colorInt).withOpacity(0.7),
    700: Color(colorInt).withOpacity(0.8),
    800: Color(colorInt).withOpacity(0.9),
    900: Color(colorInt).withOpacity(1.0),
  });
}
