

import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:watch_app/header.dart';

import 'route/alarmpage.dart';
import 'route/newalarm.dart';
import 'route/quotationspage.dart';
import 'route/settingpage.dart';
import 'route/timer.dart';

class HomeWatch extends StatefulWidget {
  HomeWatch({Key key}) : super(key: key);

  @override
  _HomeWatchState createState() => _HomeWatchState();
}

class _HomeWatchState extends State<HomeWatch> {
  //タップされたら色を付け、何が選択されているかわかるようににする
  int _tapIndex = 0;
  final _bottomNavigationBar = <BottomNavigationBarItem>[];

  //bottomに表示するアイコン
  static const _bottomIcons = [
    Icons.alarm,
    Icons.auto_stories,
    Icons.access_time,
  ];

  ///bottomに表示するアイコンの名前
  static const _bottomIconsNames = [
    'Alarm',
    'Quotations',
    'Timer',
  ];

  ///bottomに表示するアイコンの遷移先
  var _routes = [
    AlarmPage(),///アラーム
    QuotationsPage(),///格言
    Timer(),///タイマー
    NewAlarm(),///新規アラーム
    SettingPage(),///設定
  ];

  @override
  void initState() {
    super.initState();
    _bottomNavigationBar.add(_SelectIcons(0));
    for (var i = 1; i < _bottomIconsNames.length; i++) {
      _bottomNavigationBar.add(_NoneSelectIcons(i));
    }
  }

  //押されたアイコン
  BottomNavigationBarItem _SelectIcons(int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        _bottomIcons[index],
        color: Colors.red,
      ),
      title: Text(
          _bottomIconsNames[index],
        style: TextStyle(
          color: Colors.red,
        ),
      )
    );
  }

  //押されていないアイコン
  BottomNavigationBarItem _NoneSelectIcons(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _bottomIcons[index],
          color: Colors.white,
        ),
        title: Text(
          _bottomIconsNames[index],
          style: TextStyle(
            color: Colors.white,
          ),
        )
    );
  }

  //Iconをタップされた時の処理
  void _onTapIcon(int index) {
    setState(() {
      _bottomNavigationBar[_tapIndex] = _NoneSelectIcons(_tapIndex);
      _bottomNavigationBar[_tapIndex] = _SelectIcons(_tapIndex);
      _tapIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(Icons.settings),
          onPressed: () {///なぜ？？？
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewAlarm(),
                )
            );
          }
        ),
        actions: [
          Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingPage(),
                  )
              );
            },
          ),
        ],
        title: Text('QuotationTimer'),
      ),
      //タップされたインデックスを返す
      body: _routes.elementAt(_tapIndex),
      bottomNavigationBar: BottomNavigationBar(
        //タブを3つ以上にすると、タブが白くなってしまうのでfixedにする
        type: BottomNavigationBarType.fixed,
        //セレクタされた時の色
        fixedColor: Colors.red,
        //表示するアイコン
        items: _bottomNavigationBar,
        //現在アクティブなアイテム⇨タップされたアイコン
        currentIndex: _tapIndex,
        //タップされた時の処理
        onTap: _onTapIcon,
        ),
      );
  }
}

