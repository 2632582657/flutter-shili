import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachview;
  int _index=0;
  @override
  void initState() {
   _eachview =List();
   _eachview
    ..add(EachView('home'))
    ..add(EachView('eamill'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachview[_index],
      //可交互的浮动按钮
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context){
              return EachView('new page');
            }
          ));
        },
        //长按提示消息
        tooltip: '我们之间',
        child: Icon(Icons.add,color:Colors.white),
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.redAccent,
        //为以后按钮的融合提供的缺口
        shape: CircularNotchedRectangle(),
        child: Row(         
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                 _index=0; 
                });
              },
            ),
            IconButton(
              icon:Icon(Icons.email),
              color:Colors.white,
              onPressed: (){
                setState(() {
                 _index=1; 
                });
              },
            )
          ],
        ),
      ),
    );
  }
}