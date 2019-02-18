import 'package:flutter/material.dart';
class EmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Email Page'),),
      body: Center(
        child: Text(
          '我要让你的名字显示在这上面'
        ),
      ),
    );
  }
}