import 'package:flutter/material.dart';
import 'botton_navition_widget.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '底部导航栏',
      theme: ThemeData.light(),
      home: BottonNavigationWidget()
    );
  }
}