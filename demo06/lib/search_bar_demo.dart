import 'package:flutter/material.dart';
import 'asset.dart';

class SearchBarDemo extends StatefulWidget {
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('searchbar demo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context,delegate: searchBarDelegate());
            },
          )
        ],
      ),
    );
  }
}
class searchBarDelegate extends SearchDelegate<String>{ 
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon:Icon(Icons.clear),
        onPressed: ()=>query="",
      )
    ];
  }
  @override
  Widget buildLeading(BuildContext context){
    print(query);
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: ()=>close(context,null),
    );
  }
  @override
  Widget buildResults(BuildContext context){
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      )
    );
  }
  @override
  Widget buildSuggestions(BuildContext context){
    final guessList=query.isEmpty ? defaultGuess : searchList.where((input)=>input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: guessList.length,
      itemBuilder: (context,index)=>ListTile(
        title: RichText(
          text: TextSpan(
            text: guessList[index].substring(0,query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: guessList[index].substring(query.length),
                style: TextStyle(color: Colors.grey)
              )
            ]
          ),
        ),
      ),
    );
  }
}