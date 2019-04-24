import 'package:flutter/material.dart';

/// 自定义的导航页面组件。
class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

/// 与自定义的导航页面组件关联的状态子类。
class _NavigationPageState extends State<NavigationPage>
    with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemExtent: 20.0,
        itemBuilder: (BuildContext context, int index) {
          return Text('项目 $index');
        },
      ),
    );
  }
}