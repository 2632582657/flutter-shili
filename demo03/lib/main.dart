import 'package:flutter/material.dart';
import 'pages.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '页面切换特效',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: FirstPage(),
    );
  }
}