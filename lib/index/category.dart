import 'package:flutter/material.dart';
import 'package:startup_namer/cook/cook_list.dart';

class Category extends StatelessWidget {
  Category({this.indexKey});

  final String indexKey;

  final categories = {
    '菜品': [
      {"id": 5, "parent_id": 4, "title": "荤菜"},
      {"id": 6, "parent_id": 4, "title": "素菜"},
      {"id": 7, "parent_id": 4, "title": "汤粥"},
      {"id": 8, "parent_id": 4, "title": "西点"},
      {"id": 9, "parent_id": 4, "title": "主食"},
      {"id": 10, "parent_id": 4, "title": "饮品"},
      {"id": 11, "parent_id": 4, "title": "便当"},
      {"id": 12, "parent_id": 4, "title": "小吃"}
    ],
    '工艺': [
      {"id": 14, "parent_id": 13, "title": "红烧"},
      {"id": 15, "parent_id": 13, "title": "炒"},
      {"id": 16, "parent_id": 13, "title": "煎"},
      {"id": 17, "parent_id": 13, "title": "炸"},
      {"id": 18, "parent_id": 13, "title": "焖"},
      {"id": 19, "parent_id": 13, "title": "炖"},
      {"id": 20, "parent_id": 13, "title": "蒸"},
      {"id": 21, "parent_id": 13, "title": "烩"},
      {"id": 22, "parent_id": 13, "title": "熏"},
      {"id": 23, "parent_id": 13, "title": "腌"},
      {"id": 24, "parent_id": 13, "title": "煮"},
      {"id": 25, "parent_id": 13, "title": "炝"},
      {"id": 26, "parent_id": 13, "title": "卤"},
      {"id": 27, "parent_id": 13, "title": "拌"},
      {"id": 28, "parent_id": 13, "title": "烤"}
    ],
    '菜系': [
      {"id": 30, "parent_id": 29, "title": "鲁菜"},
      {"id": 31, "parent_id": 29, "title": "川菜"},
      {"id": 32, "parent_id": 29, "title": "粤菜"},
      {"id": 33, "parent_id": 29, "title": "闽菜"},
      {"id": 34, "parent_id": 29, "title": "浙菜"},
      {"id": 35, "parent_id": 29, "title": "湘菜"},
      {"id": 36, "parent_id": 29, "title": "上海菜"},
      {"id": 37, "parent_id": 29, "title": "徽菜"},
      {"id": 38, "parent_id": 29, "title": "京菜"},
      {"id": 39, "parent_id": 29, "title": "东北菜"},
      {"id": 40, "parent_id": 29, "title": "西北菜"},
      {"id": 41, "parent_id": 29, "title": "客家菜"},
      {"id": 42, "parent_id": 29, "title": "台湾美食"},
      {"id": 43, "parent_id": 29, "title": "泰国菜"},
      {"id": 44, "parent_id": 29, "title": "日本料理"},
      {"id": 45, "parent_id": 29, "title": "韩国料理"},
      {"id": 46, "parent_id": 29, "title": "西餐"},
      {"id": 68, "parent_id": 29, "title": "苏菜"},
      {"id": 69, "parent_id": 29, "title": "天津菜"},
      {"id": 70, "parent_id": 29, "title": "渝菜"},
      {"id": 71, "parent_id": 29, "title": "清真菜"},
      {"id": 72, "parent_id": 29, "title": "豫菜"},
      {"id": 73, "parent_id": 29, "title": "晋菜"},
      {"id": 74, "parent_id": 29, "title": "赣菜"},
      {"id": 75, "parent_id": 29, "title": "湖北菜"},
      {"id": 76, "parent_id": 29, "title": "云南菜"},
      {"id": 77, "parent_id": 29, "title": "贵州菜"},
      {"id": 78, "parent_id": 29, "title": "新疆菜"},
      {"id": 79, "parent_id": 29, "title": "淮扬菜"},
      {"id": 80, "parent_id": 29, "title": "潮州菜"},
      {"id": 81, "parent_id": 29, "title": "广西菜"},
      {"id": 82, "parent_id": 29, "title": "香港美食"},
      {"id": 83, "parent_id": 29, "title": "台湾菜"},
      {"id": 84, "parent_id": 29, "title": "澳门美食"},
      {"id": 85, "parent_id": 29, "title": "越南菜"},
      {"id": 86, "parent_id": 29, "title": "意大利菜"},
      {"id": 87, "parent_id": 29, "title": "墨西哥菜"},
      {"id": 88, "parent_id": 29, "title": "西班牙菜"},
      {"id": 89, "parent_id": 29, "title": "法国菜"},
      {"id": 90, "parent_id": 29, "title": "美国菜"},
      {"id": 91, "parent_id": 29, "title": "巴西烧烤"},
      {"id": 92, "parent_id": 29, "title": "东南亚菜"},
      {"id": 93, "parent_id": 29, "title": "印度菜"},
      {"id": 94, "parent_id": 29, "title": "伊朗菜"},
      {"id": 95, "parent_id": 29, "title": "土耳其菜"},
      {"id": 96, "parent_id": 29, "title": "澳大利亚菜"}
    ],
    '人群': [
      {"id": 48, "parent_id": 47, "title": "孕妇食谱"},
      {"id": 49, "parent_id": 47, "title": "婴幼食谱"},
      {"id": 50, "parent_id": 47, "title": "儿童食谱"},
      {"id": 51, "parent_id": 47, "title": "懒人食谱"},
      {"id": 52, "parent_id": 47, "title": "宵夜"},
      {"id": 53, "parent_id": 47, "title": "素食"},
      {"id": 54, "parent_id": 47, "title": "产妇食谱"},
      {"id": 55, "parent_id": 47, "title": "二人世界"},
      {"id": 56, "parent_id": 47, "title": "下午茶"}
    ],
    '功能': [
      {"id": 58, "parent_id": 57, "title": "减肥"},
      {"id": 59, "parent_id": 57, "title": "便秘"},
      {"id": 60, "parent_id": 57, "title": "养胃"},
      {"id": 61, "parent_id": 57, "title": "滋阴"},
      {"id": 62, "parent_id": 57, "title": "补阳"},
      {"id": 63, "parent_id": 57, "title": "月经不调"},
      {"id": 64, "parent_id": 57, "title": "美容"},
      {"id": 65, "parent_id": 57, "title": "养生"},
      {"id": 66, "parent_id": 57, "title": "贫血"},
      {"id": 67, "parent_id": 57, "title": "润肺"}
    ],
    '小吃': [
      {"id": 98, "parent_id": 97, "title": "北京小吃"},
      {"id": 99, "parent_id": 97, "title": "上海小吃"},
      {"id": 100, "parent_id": 97, "title": "天津小吃"},
      {"id": 101, "parent_id": 97, "title": "四川小吃"},
      {"id": 102, "parent_id": 97, "title": "成都小吃"},
      {"id": 103, "parent_id": 97, "title": "南京小吃"},
      {"id": 104, "parent_id": 97, "title": "浙江小吃"},
      {"id": 105, "parent_id": 97, "title": "苏州小吃"},
      {"id": 106, "parent_id": 97, "title": "长沙小吃"},
      {"id": 107, "parent_id": 97, "title": "湖北小吃"},
      {"id": 108, "parent_id": 97, "title": "武汉小吃"},
      {"id": 109, "parent_id": 97, "title": "广东小吃"},
      {"id": 110, "parent_id": 97, "title": "广州小吃"},
      {"id": 111, "parent_id": 97, "title": "潮汕小吃"},
      {"id": 112, "parent_id": 97, "title": "广西小吃"},
      {"id": 113, "parent_id": 97, "title": "陕西小吃"},
      {"id": 114, "parent_id": 97, "title": "西安小吃"},
      {"id": 115, "parent_id": 97, "title": "新疆小吃"},
      {"id": 116, "parent_id": 97, "title": "开封小吃"},
      {"id": 117, "parent_id": 97, "title": "云南小吃"},
      {"id": 118, "parent_id": 97, "title": "贵州小吃"},
      {"id": 119, "parent_id": 97, "title": "台湾小吃"},
      {"id": 120, "parent_id": 97, "title": "香港小吃"},
      {"id": 121, "parent_id": 97, "title": "澳门小吃"},
      {"id": 122, "parent_id": 97, "title": "河南小吃"},
      {"id": 123, "parent_id": 97, "title": "青岛小吃"},
      {"id": 124, "parent_id": 97, "title": "沙县小吃"},
      {"id": 125, "parent_id": 97, "title": "厦门小吃"},
      {"id": 126, "parent_id": 97, "title": "山西小吃"},
      {"id": 127, "parent_id": 97, "title": "重庆小吃"},
      {"id": 128, "parent_id": 97, "title": "海南小吃"}
    ],
    '场景': [
      {"id": 130, "parent_id": 129, "title": "早餐"},
      {"id": 131, "parent_id": 129, "title": "午餐"},
      {"id": 132, "parent_id": 129, "title": "晚餐"},
      {"id": 133, "parent_id": 129, "title": "夜宵"},
      {"id": 134, "parent_id": 129, "title": "野餐"},
      {"id": 135, "parent_id": 129, "title": "聚会"},
      {"id": 136, "parent_id": 129, "title": "踏青"},
      {"id": 137, "parent_id": 129, "title": "单身"},
      {"id": 138, "parent_id": 129, "title": "宴请"},
      {"id": 139, "parent_id": 129, "title": "熬夜"},
      {"id": 140, "parent_id": 129, "title": "春节"},
      {"id": 141, "parent_id": 129, "title": "情人节"},
      {"id": 142, "parent_id": 129, "title": "元宵节"},
      {"id": 143, "parent_id": 129, "title": "二月二"},
      {"id": 144, "parent_id": 129, "title": "复活节"},
      {"id": 145, "parent_id": 129, "title": "愚人节"},
      {"id": 146, "parent_id": 129, "title": "寒食节"},
      {"id": 147, "parent_id": 129, "title": "清明节"},
      {"id": 148, "parent_id": 129, "title": "三月三"},
      {"id": 149, "parent_id": 129, "title": "母亲节"},
      {"id": 150, "parent_id": 129, "title": "儿童节"},
      {"id": 151, "parent_id": 129, "title": "端午节"},
      {"id": 152, "parent_id": 129, "title": "父亲节"},
      {"id": 153, "parent_id": 129, "title": "六月六"},
      {"id": 154, "parent_id": 129, "title": "七夕节"},
      {"id": 155, "parent_id": 129, "title": "中元节"},
      {"id": 156, "parent_id": 129, "title": "中秋节"},
      {"id": 157, "parent_id": 129, "title": "重阳节"},
      {"id": 158, "parent_id": 129, "title": "万圣节"},
      {"id": 159, "parent_id": 129, "title": "感恩节"},
      {"id": 160, "parent_id": 129, "title": "圣诞节"},
      {"id": 161, "parent_id": 129, "title": "腊八节"},
      {"id": 162, "parent_id": 129, "title": "小年"},
      {"id": 163, "parent_id": 129, "title": "年夜饭"},
      {"id": 164, "parent_id": 129, "title": "春季"},
      {"id": 165, "parent_id": 129, "title": "夏季"},
      {"id": 166, "parent_id": 129, "title": "秋季"},
      {"id": 167, "parent_id": 129, "title": "冬季"},
      {"id": 168, "parent_id": 129, "title": "立春"},
      {"id": 169, "parent_id": 129, "title": "雨水"},
      {"id": 170, "parent_id": 129, "title": "惊蛰"},
      {"id": 171, "parent_id": 129, "title": "春分"},
      {"id": 172, "parent_id": 129, "title": "清明"},
      {"id": 173, "parent_id": 129, "title": "谷雨"},
      {"id": 174, "parent_id": 129, "title": "立夏"},
      {"id": 175, "parent_id": 129, "title": "小满"},
      {"id": 176, "parent_id": 129, "title": "芒种"},
      {"id": 177, "parent_id": 129, "title": "夏至"},
      {"id": 178, "parent_id": 129, "title": "小暑"},
      {"id": 179, "parent_id": 129, "title": "大暑"},
      {"id": 180, "parent_id": 129, "title": "立秋"},
      {"id": 181, "parent_id": 129, "title": "处暑"},
      {"id": 182, "parent_id": 129, "title": "白露"},
      {"id": 183, "parent_id": 129, "title": "秋分"},
      {"id": 184, "parent_id": 129, "title": "寒露"},
      {"id": 185, "parent_id": 129, "title": "霜降"},
      {"id": 186, "parent_id": 129, "title": "立冬"},
      {"id": 187, "parent_id": 129, "title": "小雪"},
      {"id": 188, "parent_id": 129, "title": "大雪"},
      {"id": 189, "parent_id": 129, "title": "冬至"},
      {"id": 190, "parent_id": 129, "title": "小寒"},
      {"id": 191, "parent_id": 129, "title": "大寒"}
    ],
  };

  @override
  Widget build(BuildContext context) {
    print(indexKey);
    return getGridView(context);
  }

  Widget getGridView(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      reverse: false,
//      controller: scrollController,
      primary: false,
      physics: AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.all(15.0),
      crossAxisCount: 2,
      mainAxisSpacing: 30.0,
      crossAxisSpacing: 15.0,
      childAspectRatio: 1.5,
      children: _getContainer(context),
    );
  }

  _jump(id,context) {
    print("jumping：" + id.toString());
//    Navigator.push(
//      context,
//      new MaterialPageRoute(builder: (context) => new CookList(id: id,)),
//    );
  }

  _getContainer(BuildContext context) {
    return categories[indexKey]
        .map((item) => new RaisedButton(
      textColor: Colors.brown,
      onPressed: () {
        print("jumping：" + item['id'].toString());
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new CookList(id: item['id'].toString(),)),
        );
      },
//              onPressed: null,
              child: new Container(
//                padding: Ed,
                  child: new Column(
                children: <Widget>[
                  Image.network(
                      'https://img14.360buyimg.com/jdphoto/s72x72_jfs/t17251/336/1311038817/3177/72595a07/5ac44618Na1db7b09.png'),
                  new Text(item['title'])
                ],
              )),
            ))
        .toList();
  }
}
