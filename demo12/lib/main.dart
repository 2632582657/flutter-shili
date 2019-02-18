import 'package:flutter/material.dart';
import 'right_back.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '右滑返回上一页',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: RightBackDemo(),
    );
  }
}