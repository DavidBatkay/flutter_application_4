import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/css_color.dart';

class CssColorListItem extends StatelessWidget {
  const CssColorListItem({super.key, required this.cssColor});

  final CssColor cssColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cssColor.color,
      child: Row(
        children: [
          Text(cssColor.colorName),
          Text(cssColor.color.toString()),
        ],
      ),
    );
  }
}
