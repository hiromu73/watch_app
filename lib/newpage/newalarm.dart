
import 'package:flutter/material.dart';


///新たにアラームの設定をする画面
///時間・格言・音量の設定
class NewAlarm extends StatefulWidget {
  @override
  _NewAlarmState createState() => _NewAlarmState();
}

class _NewAlarmState extends State<NewAlarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white.withOpacity(0.2)
          )
        ),
          child: Center(
            child: Text('aaaaa'),
          )
      )
    ),
    );
  }
}
