
import 'package:flutter/material.dart';

import '../homewatch.dart';


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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                style: TextStyle(fontSize: 80),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 70,
                  color: Colors.red.withOpacity(0.8),
                  margin: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWatch(),
                      ));
                    },
                    child: Text("cancel",
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 70,
                  color: Colors.lightBlueAccent.withOpacity(0.8),
                  margin: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {

                    },
                    child: Text("ok",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                    ),

                  ),
                )
              ],
            )
          ],
        )
    );
  }
}
