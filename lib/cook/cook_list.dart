import 'package:flutter/material.dart';

class CookList extends StatelessWidget{
  
  final String id;
  
  CookList({this.id});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new Text("菜谱分类id：" + id),
        ),
      ),
    );
  }
  
}