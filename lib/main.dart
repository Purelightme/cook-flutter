import 'package:flutter/material.dart';
import 'package:startup_namer/expore/index.dart';
import 'package:startup_namer/index/index.dart';
import 'package:startup_namer/my/index.dart';

void main(){
  runApp(new Cook());
}

class Cook extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _cookState();
  }

}

class _cookState extends State<Cook>{

  int _currentIndex = 0;
  final List<Widget> _children = [
    new Index(),
    new ExploreIndex(),
    new MyIndex()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('点外卖不如做菜')
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.menu),
            title: Text('菜谱')
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: Text('发现')
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: Text('我的')
          ),
        ],
      ),
    );
  }

}