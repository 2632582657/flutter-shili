import 'package:flutter/material.dart';
import 'expansion_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '开关闭合列表',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ExpansionListDemo(),
    );
  }
}