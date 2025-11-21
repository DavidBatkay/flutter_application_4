import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/home_screen.dart';

void main() {
  runApp(CssColorViewerApp());
}

class CssColorViewerApp extends StatelessWidget {
  const CssColorViewerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Css Color Viewer',
      home: HomeScreen(),
    );
  }
}
