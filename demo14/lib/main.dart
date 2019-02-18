import 'package:flutter/material.dart';
import 'draggable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '拖拽',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: DraggableDemo(),
    );
  }
}
