import 'package:flutter/material.dart';

class ImageScale extends StatefulWidget {
  @override
  _ImageScaleState createState() => new _ImageScaleState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _ImageScaleState extends State<ImageScale>  with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;
  double _width = 300;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 2), vsync: this);
    animation=CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: _width).animate(animation)
      ..addListener(() {
        setState(()=>{});
      });
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //动画执行结束时反向执行动画
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        //动画恢复到初始状态时执行动画（正向）
        controller.forward();
      }
    });
    //启动动画(正向执行)
//    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Image.asset("images/lake.jpg",
                width: animation.value,
                height: animation.value
            ),
            new RaisedButton(onPressed: (){
              print('开始动画');
              controller.forward();
            },child: Text('开始动画'))
          ],
        ),
      )

    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}