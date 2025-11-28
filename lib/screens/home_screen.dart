import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/css_color.dart';
import 'package:flutter_application_4/screens/colored_screen.dart';
import 'package:flutter_application_4/utils/color_utils.dart';
import 'package:flutter_application_4/utils/utils.dart';
import 'package:share_plus/share_plus.dart';

import '../common/strings.dart' as strings;
import '../data/css_colors.dart';
import '../widgets/css_color_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void shareAll() {
    final buffer = StringBuffer();
    for (final color in cssColors) {
      buffer.writeln('${color.colorName}: ${toHex(color.color)} ');
    }
    SharePlus.instance.share(
      ShareParams(text: buffer.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.homeScreenTitle),
        actions: [IconButton(onPressed: shareAll, icon: Icon(Icons.share))],
      ),
      body: ListView.builder(
        itemCount: cssColors.length,
        itemBuilder: (BuildContext context, int index) {
          return CssColorListItem(
            cssColor: cssColors[index],
            onItemClick: () {
              navigateTo(
                context,
                ColoredScreen(
                  cssColor: cssColors[index],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
