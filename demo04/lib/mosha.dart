import 'package:flutter/material.dart';
import 'dart:ui';

class MoSha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(   //约束盒子组件 可以添加额外的约束条件
            constraints: const BoxConstraints.expand(),
            child: Image.network(
              'http://a2.qpic.cn/psb?/V137GK8a1YzSFw/beQZYhsSRb18KIhQBfkkw7cr*b9oeiiILTzIXAD4z.s!/c/dCEBAAAAAAAA&ek=1&kp=1&pt=0&bo=6APcBegD3AURECc!&t=5&tl=3&vuin=2632582657&tm=1550052000&sce=60-2-2&rf=0-0',
              fit: BoxFit.fill,
              width: 200.0,
              height: 300.0,
            ),
          ),
          Center(
            child: ClipRect(  //可裁切的矩形
              child: BackdropFilter( //背景过滤器
                filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200), //颜色深度
                    child: Center(
                      child: Text(
                        'Believe_',
                        style: Theme.of(context).textTheme.display3
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
