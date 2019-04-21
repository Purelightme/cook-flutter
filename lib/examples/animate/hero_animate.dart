import 'package:flutter/material.dart';

class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: InkWell(
        child: Hero(
          tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
          child: ClipOval(
            child: Image.asset("images/lake.jpg",
              width: 50.0,
            ),
          ),
        ),
        onTap: () {
          //打开B路由
          Navigator.push(context, PageRouteBuilder(
              pageBuilder: (BuildContext context, Animation animation,
                  Animation secondaryAnimation) {
                return new FadeTransition(
                  opacity: animation,
                  child: Scaffold(
                    body: HeroAnimationRouteB(),
                  ),
                );
              })
          );
        },
      ),
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
          tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
          child: GestureDetector(
            child: Image.asset("images/lake.jpg"),
            onLongPress: (){
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: Text('保存到相册？'),
                  content: Text('ok'),
                )
              );
            },
            onTap: (){
              Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (BuildContext context, Animation animation,
                      Animation secondaryAnimation) {
                    return new Scaffold(
                      appBar: AppBar(
                        title: Text('RouteB'),
                      ),
                      body: new FadeTransition(
                        opacity: animation,
                        child: Scaffold(
                          body: HeroAnimationRoute(),
                        ),
                      ),
                    );
                  })
              );
            },
          )
      )
    );
  }
}