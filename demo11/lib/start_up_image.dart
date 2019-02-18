import 'package:flutter/material.dart';
import 'homepage.dart';

class StartUpImage extends StatefulWidget {
  _StartUpImageState createState() => _StartUpImageState();
}

class _StartUpImageState extends State<StartUpImage> with SingleTickerProviderStateMixin {

  //相当于控制动画的控制器
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
    _animation=Tween(begin: 0.0,end: 1.0).animate(_controller);

    _animation.addStatusListener((status){
      if(status==AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context)=>MyHomePage()),
          (route)=>route==null
        );
      }
    });

    _controller.forward();//播放动画

  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose(); 
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546851657199&di=fdd278c2029f7826790191d59279dbbe&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0112cb554438090000019ae93094f1.jpg%401280w_1l_2o_100sh.jpg',
        scale: 2.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
