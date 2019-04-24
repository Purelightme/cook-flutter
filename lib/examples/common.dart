import 'package:flutter/material.dart';
import 'package:startup_namer/examples/animate/hero_animate.dart';
import 'package:startup_namer/examples/animate/image_scale.dart';
import 'package:startup_namer/examples/basic_widget/form_validate.dart';
import 'package:startup_namer/examples/basic_widget/text_input.dart';
import 'package:startup_namer/examples/container/constraint_box_demo.dart';
import 'package:startup_namer/examples/container/container_demo.dart';
import 'package:startup_namer/examples/container/decorated_box_demo.dart';
import 'package:startup_namer/examples/container/padding_demo.dart';
import 'package:startup_namer/examples/container/scaffold_demo.dart';
import 'package:startup_namer/examples/decoration_widget/clipoval_demo.dart';
import 'package:startup_namer/examples/device_feature/image_picker_demo.dart';
import 'package:startup_namer/examples/layout/flex_demo.dart';
import 'package:startup_namer/examples/layout/stack_demo.dart';
import 'package:startup_namer/examples/layout/wrap.dart';
import 'package:startup_namer/examples/navigator/navigator.dart';
import 'package:startup_namer/examples/plugin_demo/easy_refresh_demo.dart';
import 'package:startup_namer/examples/plugin_demo/video_player_demo.dart';
import 'package:startup_namer/examples/scroll_widget/infinite_listview.dart';
import 'package:startup_namer/examples/scroll_widget/keep_alive.dart';
import 'package:startup_namer/examples/scroll_widget/single_child_scroll_view.dart';
import 'package:startup_namer/examples/state_manager/mix.dart';
import 'package:startup_namer/examples/state_manager/parent.dart';
import 'package:startup_namer/examples/state_manager/self.dart';

class CommonApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: Text('导航栏'),),
        body: new PhoenixPage(),
      ),
      title: 'TestApp',
      theme: new ThemeData(
        primaryColor: Colors.redAccent,
      ),
    );
  }

}