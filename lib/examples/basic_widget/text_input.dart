import 'package:flutter/material.dart';

class TextInputDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _TextInputDemoState();
  }

}

class _TextInputDemoState extends State<TextInputDemo>{

  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  initState(){
    _usernameController.addListener((){
      print(_usernameController.text);
    });
    _passwordController.addListener((){
      print(_passwordController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person)
          ),
          controller: _usernameController,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)
          ),
          obscureText: true,
          controller: _passwordController,
        ),
        new RaisedButton(onPressed: _login,child: Text('登录'),),
      ],
    );
  }

  void _login(){
    print(_usernameController.text);
    print(_passwordController.text);
  }

}
