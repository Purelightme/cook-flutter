import 'package:flutter/material.dart';
import 'package:startup_namer/index/category.dart';

class Index extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '菜品'),
    Tab(text: '工艺'),
    Tab(text: '菜系'),
    Tab(text: '人群'),
    Tab(text: '功能'),
    Tab(text: '小吃'),
    Tab(text: '场景'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: TabBar(
            tabs: myTabs,
            isScrollable: true,
            indicatorColor: Colors.red,
            labelColor: Colors.white,
          ),
        ),
        body: TabBarView(
            children: myTabs
                .map((Tab tab) => new Category(indexKey: tab.text,))
                .toList()),
      ),
    );
  }
}
