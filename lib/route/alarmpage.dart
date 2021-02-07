


// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


///アラームページ
///設定したアラームを縦に並べていく
class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {

  // 選択した日時を格納する変数
  var _mydatetime = new DateTime.now();

  // 日時を指定したフォーマットで指定するためのフォーマッター
  var formatter = new DateFormat('HH:mm');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              formatter.format(_mydatetime),
              style: Theme.of(context).textTheme.display1,
    ),
    ],
    );
  }
}
