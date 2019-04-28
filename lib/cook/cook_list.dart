import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/phoenix_header.dart';
import 'package:flutter_easyrefresh/phoenix_footer.dart';
import 'package:startup_namer/cook/cook_detail.dart';
import 'package:toast/toast.dart';


class CookList extends StatefulWidget {
  CookList({this.id});

  final String id;

  @override
  State<StatefulWidget> createState() => new _CookListState();
}

class _CookListState extends State<CookList> {

  num _page = 1; //当前页数
  int _total = 0; //总数

  List<dynamic> cooks = [];

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
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => new CookDetail(id: cooks[index]['id'].toString(),)),
                        );
                      },
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: cooks[index]["img"].isEmpty ? Image.asset("images/404.jpg") :
                            Image.network(cooks[index]["img"]),
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
                                        fontSize: 12),
                                  ),
                                  Text(
                                    cooks[index]["introduction"],
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            flex: 4,
                          ),
                        ],
                      ),
                    )
                  );
                }),
            onRefresh: () async {
//              await new Future.delayed(const Duration(seconds: 1), () {
//                if (!mounted) return;
//                setState(() {
//                  cooks.clear();
//                });
//              });
                setState(() {
                  cooks.clear();
                  _page = 1;
                });
            },
//          loadMore: () async {
//            await new Future.delayed(const Duration(seconds: 1), () {
//              if (cooks.length < 20) {
//                setState(() {
//                  cooks.addAll(cooksAdd);
//                });
//              }
//            });
//          },
            loadMore: () async{
              Response response = await Dio().get(
                  "https://weapp.tinali.cn/common/categories/"+widget.id+"/cooks?page="+_page.toString()
              );
              var res = response.data;
//              Map<String,dynamic> res_map = json.decode(res);
              //print(res["data"]["data"]);
              this.setState((){
                if(res["data"]["total"] != cooks.length + res["data"]["data"].length){
                  _page += 1;
                  cooks.addAll(res["data"]["data"]);
                }else{
                  showToast('暂时就这么多咯~');
                }
              });
            }),
      ),
    );
  }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}
