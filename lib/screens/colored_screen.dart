import 'package:flutter/material.dart';
import 'package:flutter_application_4/utils/color_utils.dart';
import '../models/css_color.dart';

class ColoredScreen extends StatelessWidget {
  const ColoredScreen({super.key, required this.cssColor});

  final CssColor cssColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cssColor.color,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(cssColor.colorName),
            Text(
              toHex(cssColor.color),
            ),
          ],
        ),
      ),
    );
  }
}
