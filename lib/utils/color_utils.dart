import 'package:flutter/material.dart';

String toHex(Color color) {
  final int code = color.toARGB32();
  return '#${code.toRadixString(16)}';
}

Color contrastColor(Color color) {
  // if (ThemeData.estimateBrightnessForColor(color) == Brightness.dark) {
  //   return Colors.white;
  // } else {
  //   return Colors.black;
  // }
  return ThemeData.estimateBrightnessForColor(color) == Brightness.dark
      ? Colors.white
      : Colors.black;
}
