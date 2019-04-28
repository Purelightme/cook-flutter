import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CookDetail extends StatefulWidget {
  CookDetail({this.id});

  final String id;

  @override
  State<StatefulWidget> createState() => new _CookDetailState();
}

class _CookDetailState extends State<CookDetail> {
  Map<String, dynamic> detail;

  @override
  void initState() {
    _getCookDetail();
    super.initState();
  }

  _getCookDetail() async {
    Response response =
        await Dio().get("https://weapp.tinali.cn/common/cooks/" + widget.id);
    setState(() {
      detail = response.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(detail);
    return Scaffold(
      appBar: AppBar(
        title: Text('菜谱详情'),
      ),
      body: Column(
        children: <Widget>[
          detail['data']['img'] == null
              ? Image.asset('images/404.jpg')
              : Image.network(detail['data']['img']),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                detail['data']['title'],
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.star, color: Colors.yellow),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('做法：',
                  style: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.brown)),
            ],
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (BuildContext context, int index){
              return Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '第'+index.toString()+'步',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  detail['data']['method'][index]['img'] == null ? Image.asset('images/404.jpg') :
                  Image.network(detail['data']['method'][index]['img']),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        detail['data']['method'][index]['step'],
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              );
            },itemCount: detail['data']['method'].length),
          ),
        ],
      ),
    );
  }
}
