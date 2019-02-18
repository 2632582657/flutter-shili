import 'package:flutter/material.dart';

class ExpansionListDemo extends StatefulWidget {
  _ExpansionListDemoState createState() => _ExpansionListDemoState();
}

class _ExpansionListDemoState extends State<ExpansionListDemo> {
  List<int> mList;
  List<ExpandState> expandStateList;
  _ExpansionListDemoState(){
    mList=new List();
    expandStateList=new List();
    for(int i=0;i<10;i++){
      mList.add(i);
      expandStateList.add(ExpandState(i,false));
    }
  }
  _setCurrentIndex(int index,isExpand){
    setState(() {
     expandStateList.forEach((item){
       if(item.index==index){
         item.isOpen=!isExpand;
       }
     }); 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('展开闭合菜单列表'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index,bol){
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index){
            return ExpansionPanel(
              headerBuilder: (context,isExpanded){
                return ListTile(
                  title: Text('这是第${index}个'),
                );
              },
              body: ListTile(
                title: Text('这是第${index}个'),
              ),
              isExpanded: expandStateList[index].isOpen
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ExpandState{
  var isOpen;
  var index;
  ExpandState(this.index,this.isOpen);
}