import 'package:flutter/material.dart';
class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('青玉案·元夕'),
      ),
      body: Center(
        child: Tooltip(
          child: Image.network('https://hellorfimg.zcool.cn/provider_image/preview260/2235462939.jpg'),
          message: '东风夜放花千树。更吹落、星如雨。宝马雕车香满路。凤箫声动，玉壶光转，一夜鱼龙舞。 蛾儿雪柳黄金缕。笑语盈盈暗香去。众里寻他千百度。蓦然回首，那人却在，灯火阑珊处。',
        ),
      ),
    );
  }
}