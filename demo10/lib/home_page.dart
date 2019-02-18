import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
           ClipPath(
            clipper:BottomClipper(),
            child: Container(
              color:Colors.lightBlue,
              height: 200.0,
            ),
          )
        ],
      )
    );
  }
}
//两段贝塞尔曲线
class BottomClipper extends CustomClipper<Path>{ 
  @override
    Path getClip(Size size) {
      var path = Path();
      path.lineTo(0.0, 0.0);
      path.lineTo(0.0, size.height-40.0);
      var firstStartPath=Offset(size.width/4.0, size.height);
      var firstEndPath=Offset(size.width/2.25,size.height-30.0);
      path.quadraticBezierTo(firstStartPath.dx, firstStartPath.dy, firstEndPath.dx, firstEndPath.dy);

      var secStartPath=Offset(size.width/4.0*3.0, size.height-90.0);
      var secEndPath=Offset(size.width, size.height-40.0);
      path.quadraticBezierTo(secStartPath.dx, secStartPath.dy, secEndPath.dx, secEndPath.dy);
      path.lineTo(size.width, size.height-40.0);
      path.lineTo(size.width, 0.0);
      return path;
    }
    @override
      bool shouldReclip(CustomClipper<Path> oldClipper)=>false;
}
class BottomClipperTest extends CustomClipper<Path>{
  @override
    Path getClip(Size size) {
      var path = Path();
      path.lineTo(0.0, 0.0);
      path.lineTo(0.0, size.height-50);
      var startPath=Offset(size.width/2,size.height);
      var endPath=Offset(size.width,size.height-50);
      path.quadraticBezierTo(startPath.dx, startPath.dy, endPath.dx, endPath.dy);
      path.lineTo(size.width, size.height-50);
      path.lineTo(size.width, 0.0);
      path.close();
      return path;
    }
    @override
      bool shouldReclip(CustomClipper<Path> oldClipper)=>false;
}