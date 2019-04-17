import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:banner/banner.dart';
import '../utils/net.dart';

class ExploreIndex extends StatelessWidget {

//  Map<String,dynamic> _res;

  @override
  Widget build(BuildContext context) {
    var _banner = _getBanner();
    return _banner;
  }

  _getBanner(){
    return new BannerView(
      data: [
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556021302&di=edbf957981dbf666423d66f16e9116b0&imgtype=jpg&er=1&src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_ls%2F0%2F7836239207_640330%2F0',
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556021302&di=edbf957981dbf666423d66f16e9116b0&imgtype=jpg&er=1&src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_ls%2F0%2F7836239207_640330%2F0',
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556021302&di=edbf957981dbf666423d66f16e9116b0&imgtype=jpg&er=1&src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_ls%2F0%2F7836239207_640330%2F0'
      ],
      buildShowView: (index, data) {
        print(data);
        return Image.network(data);
      },
      onBannerClickListener: (index, data) {
        print(index);
      },
    );
  }

//  _getStory() async {
//    Response response = await Dio().get("https://weapp.tinali.cn/common/stories");
//    Map<String, dynamic> stories = json.decode(response.data);
//    _res = stories;
//  }
}