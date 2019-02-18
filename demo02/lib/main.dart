import 'package:flutter/material.dart';
import 'bottom_appbar.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不规则的底部导航栏',
      //自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: BottomAppBarDemo(),
    );
  }
}