import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:Alignment.center ,
      fit: StackFit.expand, //未定位widget占满Stack整个空间
      children: <Widget>[
        Positioned(
          left: 18.0,
          child: Text("I am Jack"),
        ),
        Container(child: Text("Hello world",style: TextStyle(color: Colors.white)),
          color: Theme.of(context).primaryColor
        ),
        Positioned(
          top: 18.0,
          child: Text("Your friend"),
        )
      ],
    );
  }

}