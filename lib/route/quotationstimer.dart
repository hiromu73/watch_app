

import 'package:flutter/material.dart';
import 'dart:async';

class QuotationsTimer extends StatefulWidget {
  @override
  _QuotationsTimerState createState() => _QuotationsTimerState();
}

class _QuotationsTimerState extends State<QuotationsTimer> {

  // void _stopTimer(Timer timer){
  //   //格言表示
  // }

  //タイマー初期値
  var _timerString = '00:00:00';

  //開始の時間
  DateTime _startTime;

  //ローカルタイマー
  var _timer;
  var _isStart = false;
  var _stopTimer ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(_timerString,
                style: TextStyle(fontSize: 80)
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100, height: 70, color: Colors.red.withOpacity(0.8),
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                    onPressed: _startTimer,
                    child: Text(_isStart ? 'STOP' : 'START',
                      style: TextStyle(
                        color: Colors.white),
                    )
                ),
              ),
              Container(
                width: 100, height: 70, color: Colors.lightBlueAccent.withOpacity(0.8),
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                    onPressed: resetTimer,
                    child: Text("Reset" ,
                      style: TextStyle(
                        color: Colors.white),
                    )
                ),
              )
          ],)
        ],
      ),
    );
  }


//onPressed押されるたびに
//DateTime.now()で現在の時間を取得し、新しい繰り返しタイマーを取得する
void _startTimer() {
  setState(() {
    _isStart = !_isStart;
      if ( _isStart ) {
        //現在の時間
        _startTime = DateTime.now();
        //1秒後に繰り返し_onTimerを呼び出す
        _timer = Timer.periodic(Duration(seconds: 1), _onTimer);
        // if (_timer = true) {
        //   // _timer = Timer.periodic(Duration(seconds: 1), _onTimer);
        // }
      } else {
        //タイマーを止める
        _timer.cancel();
        // _timer = Timer.periodic(Duration(seconds: 1), _onTimer);
        // _timer = null;
        // _isStart = !_isStart;
        // _stopTimer = _timer;
        // _timerString = _stopTimer;
      }
  });
}

@override
void resetTimer(){
    setState(() {
      _timer.cancel();
      if (_timer = true) {
        _timerString = '00:00:00';
        _isStart = !_isStart;
        if (_isStart) {
          _isStart = !_isStart;
        }
      } else {
        _timer.cancel();
        _timerString = '00:00:00';
      }

    });
}

  void _onTimer(Timer timer) {
    //現在の時刻を取得
    var now = DateTime.now();
    //開始時刻(now)と_startTimeを比較して差分を取得
    var diff = now.difference(_startTime).inSeconds;

    //タイマーロジック
    var hour = (diff / (60 * 60)).floor();
    var mod = diff % (60 * 60);
    var minutes = (mod / 60).floor();
    var second = mod % 60;

    setState(() => {
      _timerString =
      """${_convertTwoDigits(hour)}:${_convertTwoDigits(minutes)}:${_convertTwoDigits(second)}"""
    });
  }

  String _convertTwoDigits(int number) {
    return number >= 10 ? "$number" : "0$number";
  }
}



