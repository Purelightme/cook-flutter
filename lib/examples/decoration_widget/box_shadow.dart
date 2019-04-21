import 'package:flutter/material.dart';

class BoxShadowDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Container(
        child: new ClipOval(
          child: new SizedBox(
            width: 300,
            height: 300,
            child: new Image.asset("images/lake.jpg",fit: BoxFit.fill,),
          ),
        ),
      )
    );
  }

}