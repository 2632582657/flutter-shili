import 'package:flutter/material.dart';
import 'pages/home_pages.dart';
import 'pages/email_pages.dart';
import 'pages/phone_page.dart';
import 'pages/airplay_page.dart';

class BottonNavigationWidget extends StatefulWidget {
  _BottonNavigationWidgetState createState() => _BottonNavigationWidgetState();
}

class _BottonNavigationWidgetState extends State<BottonNavigationWidget> {
  final _daohang=Colors.blue;

  int _currentIndex=0;
  List<Widget> list=List();

  @override
  void initState() {
    list
      ..add(HomePage())
      ..add(EmailPage())
      ..add(Airplay())
      ..add(PhonePage());
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color:  _daohang,),
            title: Text('home',style: TextStyle(color:  _daohang),)
          ),
          BottomNavigationBarItem(    
            icon: Icon(Icons.email,color:  _daohang,),
            title: Text('email',style: TextStyle(color: _daohang),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages,color:  _daohang,),
            title: Text('phone',style: TextStyle(color:  _daohang),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay,color:  _daohang,),
            title: Text('airplay',style: TextStyle(color:  _daohang),)
          ),
          
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
           _currentIndex=index; 
          });
        },
      ),
    );
  }
}