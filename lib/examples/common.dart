import 'package:flutter/material.dart';
import 'package:startup_namer/examples/basic_widget/form_validate.dart';
import 'package:startup_namer/examples/basic_widget/text_input.dart';
import 'package:startup_namer/examples/state_manager/mix.dart';
import 'package:startup_namer/examples/state_manager/parent.dart';
import 'package:startup_namer/examples/state_manager/self.dart';

class CommonApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: Text('导航栏'),),
        body: new FormValidate(),
      ),
      title: 'TestApp',
      theme: new ThemeData(
        primaryColor: Colors.redAccent,
      ),
    );
  }

}