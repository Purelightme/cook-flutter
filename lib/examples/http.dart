import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget{

  DisplayText({this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Name:' + name),
      ),
    );
  }

}

class SendButton extends StatelessWidget{

  SendButton({this.onPress});

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPress,
      child: new Text('发送请求'),
    );
  }
}

class HttpDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _HttpDemoState();
  }
}

class _HttpDemoState extends State<HttpDemo>{

  send(){
//    Dio dio = new Dio();
    setState(() {
      _name += '测试';
    });
  }

  String _name = 'mm';

  @override
  Widget build(BuildContext context) {
    return new Row(children: <Widget>[
      new SendButton(onPress: send),
      new DisplayText(name: _name),
    ]);
  }

}


