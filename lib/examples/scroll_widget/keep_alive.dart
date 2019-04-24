import 'package:flutter/material.dart';
import 'package:startup_namer/examples/scroll_widget/navigation_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // TODO：当前页面视图的相关变量。
  /// 当前页面选择的索引。
  int _selectedIndex = 0;

  /// 页面控制器（`PageController`）组件，页面视图（`PageView`）的控制器。
  PageController _controller = PageController();

  /// 释放相关资源。
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  // TODO：切换页面视图的方法。
  void _onItemTapped(int index) {
    // 创建底部导航栏的组件需要跟踪当前索引并调用`setState`以使用新提供的索引重建它。
    setState(() {
      _selectedIndex = index;
      // 跳到页面（`jumpToPage`）方法，更改显示在的页面视图（`PageView`）组件中页面。
      _controller.jumpToPage(index);
    });
  }
  // TODO：集中管理导航项目列表和页面组件列表。
  /// 统一管理导航项目的列表。
  List<BottomNavigationBarItem> navigationItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.comment),
      title: Text('消息'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      title: Text('设置'),
    ),
  ];

  /// 统一管理导航项目对应的组件列表。
  final _widgetOptions = [
    NavigationPage(),
    NavigationPage(),
    NavigationPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO：页面视图的主要内容。
      // 页面视图（`PageView`）组件，可逐页工作的可滚动列表，每个子项都被强制与视窗大小相同。
      body: PageView.builder(
        // 物理（`physics`）属性，页面视图应如何响应用户输入。
        // 从不可滚动滚动物理（`NeverScrollableScrollPhysics`）类，不允许用户滚动。
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return _widgetOptions.elementAt(index);
        },
        itemCount: _widgetOptions.length,
        // 控制器（`controller`）属性，用于控制滚动此页面视图位置的对象。
        controller: _controller,
      ),
      // 底部导航栏（`bottomNavigationBar`）属性，显示在脚手架（`Scaffold`）组件的底部。
      // 底部导航栏（`BottomNavigationBar`）组件，显示在应用程序底部的组件，
      // 用于在几个屏幕之间中进行选择，通常在三到五之间，再多就不好看了。
      bottomNavigationBar: BottomNavigationBar(
        // 项目（`items`）属性，位于底部导航栏中的交互组件，其中每一项都有一个图标和标题。
        items: navigationItem,
        // 目前的索引（`currentIndex`）属性，当前活动项的项目索引。
        currentIndex: _selectedIndex,
        // 固定颜色（`fixedColor`）属性，当BottomNavigationBarType.fixed时所选项目的颜色。
        fixedColor: Color(0xffFE7C30),
        // 在点击（`onTap`）属性，点击项目时调用的回调。
        onTap: _onItemTapped,
        // 定义底部导航栏（`BottomNavigationBar`）组件的布局和行为。
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}