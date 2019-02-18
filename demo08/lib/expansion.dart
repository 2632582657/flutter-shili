import 'package:flutter/material.dart';
class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('展开闭合'),
      ),
      body: Center(
        child: ExpansionTile(
          //用户不点击的时候显示的文本
          title: Text('春雪'),
          //左边的图标 也可以是文本或图片
          leading: Icon(Icons.ac_unit),
          //右侧的箭头，你可以自行替换但是我觉的很少替换，因为谷歌已经表现的很完美了。
          trailing: Text('唐·韩愈',style:TextStyle(fontSize:14.0)),
          //打开显示的背景颜色
          backgroundColor: Colors.white12,
          //初始状态是否展开，为true时，是展开，默认为false，是不展开。
          initiallyExpanded: false,
          //打开后显示的内容 可以是多个
          children: <Widget>[
            ListTile(
              title: Text('新年都未有芳华，二月初惊见草芽。 '),
              leading: Icon(Icons.ac_unit),
            ),
            ListTile(
              title: Text('白雪却嫌春色晚，故穿庭树作飞花。'),
               leading: Icon(Icons.ac_unit),
            )
          ],
        ),
      ),
    );
  }
}