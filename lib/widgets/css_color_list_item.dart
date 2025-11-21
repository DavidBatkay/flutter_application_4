import 'package:flutter/material.dart';

import '../models/css_color.dart';
import '../utils/color_utils.dart';

class CssColorListItem extends StatelessWidget {
  const CssColorListItem({super.key, required this.cssColor});

  final CssColor cssColor;
  @override
  Widget build(BuildContext context) {
    // cache the list item text style to use in multiple places
    final TextStyle itemStyle = TextStyle(color: contrastColor(cssColor.color));

    return Container(
      padding: EdgeInsets.all(16.0),
      color: cssColor.color,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
            cssColor.colorName,
            style: itemStyle,
          ),
          Text(
            toHex(cssColor.color),
            style: itemStyle,
          ),
        ],
      ),
    );
  }
}
