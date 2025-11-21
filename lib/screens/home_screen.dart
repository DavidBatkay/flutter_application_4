import 'package:flutter/material.dart';
import 'package:flutter_application_4/data/css_colors.dart';
import 'package:flutter_application_4/widgets/css_color_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          CssColorListItem(cssColor: cssColors[5]),
          CssColorListItem(cssColor: cssColors[22]),
          CssColorListItem(cssColor: cssColors[65]),
          CssColorListItem(cssColor: cssColors[54]),
          CssColorListItem(cssColor: cssColors[88]),
          CssColorListItem(cssColor: cssColors[72]),
        ],
      ),
    );
  }
}
