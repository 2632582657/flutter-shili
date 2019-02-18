import 'package:flutter/material.dart';
import 'tooltip.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '轻量级提示控件',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: ToolTipDemo(),
    );
  }
}
