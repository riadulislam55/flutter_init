import 'package:flutter/material.dart';

import '../app.helper.dart';

extension StringColorExtension on String {
  Color toColor() {
    return HexColor(this);
  }

  MaterialColor toMaterial() {
    return toMaterialColor(HexColor(this).value);
  }
}

extension ObjColorExtension on Color {
  MaterialColor tooMaterial() {
    return toMaterialColor(value);
  }
}
