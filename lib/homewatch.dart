
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//作成したWidget//
import 'route/alarmpage.dart';
import 'route/newalarm.dart';
import 'route/quotationspage.dart';
import 'route/settingpage.dart';
import 'route/quotationstimer.dart';
////////////////
class HomeWatch extends StatefulWidget {
  HomeWatch({Key key}) : super(key: key);

  @override
  _HomeWatchState createState() => _HomeWatchState();
}

class _HomeWatchState extends State<HomeWatch> {
  //タップされたら色を付け、何が選択されているかわかるようににする
  int _tapIndex = 0;
  final _bottomNavigationBar = <BottomNavigationBarItem>[];

  //
  int _tapActionIcon = 0;


  List<String> _tapList = ["Alarm","Quotations","Timer"];
  String _selectedItem = "Alarm";

  //bottomに表示するアイコン
  static const _bottomIcons = [
    Icons.alarm,
    Icons.auto_stories,
    Icons.access_time,
  ];

  //bottomに表示するアイコンの名前
  static const _bottomIconsNames = [
    'Alarm',
    'Quotations',
    'Timer',
  ];

  //bottomに表示するアイコンの遷移先
  var _routes = [
    AlarmPage(),
    QuotationsPage(),
    QuotationsTimer(),
    NewAlarm(),
    SettingPage(),
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
          color: Colors.red.withOpacity(0.8),
        ),
        title: Text(
          _bottomIconsNames[index],
          style: TextStyle(
            color: Colors.red.withOpacity(0.8),
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

  //BottomIconをタップされた時の処理
  void _onTapIcon(int index) {
    setState(() {
      _bottomNavigationBar[_tapIndex] = _NoneSelectIcons(_tapIndex);
      _bottomNavigationBar[index] = _SelectIcons(index);
      _tapIndex = index;
    });
  }

  //popUpMenuがタップされた時の処理

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Quotations"),
          leading: Padding(
            padding: EdgeInsets.all(4.0),
            child: IconButton(
                icon: Icon(Icons.settings),
                onPressed:  (){
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingPage(),
                        ));
                  });
                }),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    showDialog(
                        context: context,
                    builder: (_){
                          return SimpleDialog(
                            title: Text('NewSetting',textAlign: TextAlign.center),
                            children: <Widget>[
                              SimpleDialogOption(
                                onPressed: () => Navigator.pop(context),
                                child: Container(
                                  margin: EdgeInsets.all(10.0),
                                  child: Container(
                                      child: Icon(Icons.alarm),
                                  ),
                                )
                              ),
                              SimpleDialogOption(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Quotations",textAlign: TextAlign.center),
                              ),
                              SimpleDialogOption(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Timer",textAlign: TextAlign.center),
                              )
                            ],
                            // children: <Widget>[
                            //   // SimpleDialogOption(
                            //   //   child: Card(
                            //   //     margin: EdgeInsets.all(10.0),
                            //   //     child: ListTile(
                            //   //       leading : Icon(Icons.alarm),
                            //   //       title: Text("Alarm",style: TextStyle(fontSize: 20.0),),
                            //   //       onTap: () {},
                            //   //     ),
                            //   //   ),
                            //   )
                            // ],
                          );
                    });
                  }),
            ),
          ]),
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
