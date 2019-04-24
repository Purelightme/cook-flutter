import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/phoenix_header.dart';
import 'package:flutter_easyrefresh/phoenix_footer.dart';

class CookList extends StatefulWidget {
  CookList({this.id});

  final String id;

  @override
  State<StatefulWidget> createState() => new _CookListState();
}

class _CookListState extends State<CookList> {
  List<Map<String, dynamic>> cooks = [
    {
      "id": 3,
      "img": "http://f2.mob.com/null/2015/08/19/1439946005521.jpg",
      "title": "潜江油焖大虾",
      "introduction":
          "江汉平原最具人气的菜为油焖大虾，江汉平原油焖大虾是湖北省潜江油焖大虾的发展，潜江油焖大虾起源于湖北潜江市周矶镇，又称广华油焖大虾、五七油焖大虾，近年来在江汉平原声名鹊起，广受食客喜爱。"
    },
    {
      "id": 4,
      "img": "http://f2.mob.com/null/2015/08/19/1439946002812.jpg",
      "title": "盐水牛腱肉凉菜",
      "introduction": "盐水牛腱肉属于清爽凉菜，主要原料是牛腱，口味是香，工艺是煮，难度属于中级。"
    },
  ];

//  void initState(){
//
//  }

  GlobalKey<EasyRefreshState> _easyRefreshKey =
      new GlobalKey<EasyRefreshState>();
  GlobalKey<RefreshHeaderState> _headerKey =
      new GlobalKey<RefreshHeaderState>();
  GlobalKey<RefreshFooterState> _footerKey =
      new GlobalKey<RefreshFooterState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('所有菜谱'),
      ),
      body: Center(
        child: new EasyRefresh(
          key: _easyRefreshKey,
          refreshHeader: PhoenixHeader(
            key: _headerKey,
          ),
          refreshFooter: PhoenixFooter(
            key: _footerKey,
          ),
          child: new ListView.builder(
              itemCount: cooks.length,
              itemBuilder: (BuildContext context, int index) {
                return new Container(
                  height: 80,
                  padding: const EdgeInsets.all(3),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.network(cooks[index]["img"]),
                        flex: 1,
                      ),
                      Expanded(
                        child: new Container(
                          padding: const EdgeInsets.only(top: 5),
                          margin: new EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                cooks[index]["title"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                cooks[index]["introduction"],
                                maxLines: 2,
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                      ),
                        flex: 4,
                      ),
                    ],
                  ),
                );
              }),
          onRefresh: () async {
            await new Future.delayed(const Duration(seconds: 1), () {
              if (!mounted) return;
              setState(() {
                cooks.clear();
                cooks.addAll(cooksAdd);
              });
            });
          },
          loadMore: () async {
            await new Future.delayed(const Duration(seconds: 1), () {
              if (cooks.length < 20) {
                setState(() {
                  cooks.addAll(cooksAdd);
                });
              }
            });
          },
        ),
      ),
    );
  }
}
