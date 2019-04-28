//import 'package:easy_alert/easy_alert.dart';
//import 'package:flutter/material.dart';
//
//class LayoutDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    Widget titleSection = new Container(
//      padding: const EdgeInsets.all(32.0),
//      child: new Row(
//        children: [
//          new Expanded(
//            child: new Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                new Container(
//                  padding: const EdgeInsets.only(bottom: 8.0),
//                  child: new Text(
//                    'Oeschinen Lake Campground',
//                    style: new TextStyle(
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//                new Text(
//                  'Kandersteg, Switzerland',
//                  style: new TextStyle(
//                    color: Colors.grey[500],
//                  ),
//                ),
//              ],
//            ),
//          ),
////          new Icon(
////            Icons.star,
////            color: Colors.red[500],
////          ),
////          new Text('41'),
//          new FavoriteWidget()
//        ],
//      ),
//    );
//
//    Color color = Theme.of(context).primaryColor;
//
//    Column buildButtonColumn(IconData icon, String label) {
//      Color color = Theme.of(context).primaryColor;
//      return new Column(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          new Icon(icon, color: color),
//          new Container(
//            margin: const EdgeInsets.only(top: 8.0),
//            child: new Text(
//              label,
//              style: new TextStyle(
//                fontSize: 12.0,
//                fontWeight: FontWeight.w400,
//                color: color,
//              ),
//            ),
//          ),
//        ],
//      );
//    }
//
//    Widget buttonSection = new Container(
//      child: new Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: [
//          buildButtonColumn(Icons.call, 'CALL'),
//          buildButtonColumn(Icons.near_me, 'ROUTE'),
//          buildButtonColumn(Icons.share, 'SHARE'),
//        ],
//      ),
//    );
//
//    Widget textSection = new Container(
//      padding: const EdgeInsets.all(32.0),
//      child: new Text(
//        '''
//Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
//        ''',
//        softWrap: true,
//      ),
//    );
//
////    _alert() {
////      Alert.toast(context,"查看详情，点击该按钮",position: ToastPosition.center, duration: ToastDuration.long);
////    }
//
////    Widget toastBtn = new RaisedButton(onPressed: _alert,child: new Text('查看'));
//
//    return  new MaterialApp(
//        title: 'Flutter layout demo',
//        home: Scaffold(
//          appBar: AppBar(
//            title: Text('Flutter layout demo'),
//          ),
//          body: ListView(
//            children: [
//              Image.asset(
//                'images/lake.jpg',
//                width: 600,
//                height: 240,
//                fit: BoxFit.cover,
//              ),
//              titleSection,
//              buttonSection,
//              textSection,
////              toastBtn,
//            ],
//          ),
//        ),
//      );
//  }
//}
//
//class FavoriteWidget extends StatefulWidget {
//  @override
//  _FavoriteWidgetState createState() => new _FavoriteWidgetState();
//}
//
//class _FavoriteWidgetState extends State<FavoriteWidget> {
//  bool _isFavorited = true;
//  int _favoriteCount = 41;
//
//  void _toggleFavorite() {
//    setState(() {
//      // If the lake is currently favorited, unfavorite it.
//      if (_isFavorited) {
//        _favoriteCount -= 1;
//        _isFavorited = false;
//        // Otherwise, favorite it.
//      } else {
//        _favoriteCount += 1;
//        _isFavorited = true;
//      }
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Row(
//      mainAxisSize: MainAxisSize.min,
//      children: [
//        new Container(
//          padding: new EdgeInsets.all(0.0),
//          child: new IconButton(
//            icon: (_isFavorited
//                ? new Icon(Icons.star)
//                : new Icon(Icons.star_border)),
//            color: Colors.red[500],
//            onPressed: _toggleFavorite,
//          ),
//        ),
//        new SizedBox(
//          width: 18.0,
//          child: new Container(
//            child: new Text('$_favoriteCount'),
//          ),
//        ),
//      ],
//    );
//  }
//}
//
