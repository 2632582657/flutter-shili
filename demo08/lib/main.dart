import 'package:flutter/material.dart';
import 'expansion.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '展开闭合',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ExpansionTileDemo(),
    );
  }
}
