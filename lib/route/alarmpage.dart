// import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              // フォーマッターを使用して指定したフォーマットで日時を表示
              // format()に渡すのはDate型の値で、String型で返される
              formatter.format(_mydatetime),
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DatePicker.showDateTimePicker(
            context,
            showTitleActions: true,
            // onChanged内の処理はDatepickerの選択に応じて毎回呼び出される
            onChanged: (date) {
            // print('change $date');
            },
            // onConfirm内の処理はDatepickerで選択完了後に呼び出される
            onConfirm: (date) {
              setState(() {
                _mydatetime = date;
              });
            },
            currentTime: DateTime.now(),
          );
        },
    tooltip: 'Datetime',
    child: Icon(Icons.access_time),
    ),
    );
  }
}
