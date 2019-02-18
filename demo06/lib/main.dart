import 'package:flutter/material.dart';
import 'search_bar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '推荐搜索条',
      theme: ThemeData.light(),
      home: SearchBarDemo(),
    );
  }
}
