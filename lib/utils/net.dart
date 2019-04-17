import 'dart:convert';
import 'package:dio/dio.dart';

stories() async {
  try {
    Response response = await Dio().get("https://weapp.tinali.cn/common/stories");
    Map<String, dynamic> stories = json.decode(response.data);
    return stories;
  } catch (e) {
    print(e);
  }
}