import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: '跳转参数', home: new FirstPage()));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('页面跳转返回数据Demo'),
      ),
      body: new Center(
        child: new RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        _navigateToSecondPage(context);
      },
      child: Text('跳转第二个页面'),
    );
  }

  _navigateToSecondPage(BuildContext context) async {
    final result = await Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new SecondPage()));

    Scaffold.of(context).showSnackBar(new SnackBar(content: Text("$result")));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('选择一条数据'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context,'hi google');
                  },
                  child: Text('hi google'),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, 'hi flutter');
                  },
                  child: Text('hi flutter'),
                ),
              )
            ],
          ),
        ));
  }
}
