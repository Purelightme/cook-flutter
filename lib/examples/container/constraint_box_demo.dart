import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatelessWidget{

  Widget redBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: double.infinity, //宽度尽可能大
          minHeight: 50.0 //最小高度为50像素
      ),
      child: Container(
          height: 5.0,
          child: redBox
      ),
    );
  }

}