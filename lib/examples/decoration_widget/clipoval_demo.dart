import 'package:flutter/material.dart';

class ClipOvalDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            new ClipOval(
              child: new SizedBox(
                width: 200,
                height: 200,
                child: new Image.asset("images/lake.jpg",fit: BoxFit.fill,),
              ),
            ),
            new Divider(),
            new Container(
              decoration: new BoxDecoration(
//                color: Colors.white,
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.grey,
                    blurRadius: 50.0,
                    spreadRadius: 10.0,
                    offset: Offset(-1.0, 1.0),
                  )
                ]
              ),
              child: new CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("images/lake.jpg")
              ),
            ),

          ],
        ),
      )

    );
  }

}