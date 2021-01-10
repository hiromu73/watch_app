

import 'package:flutter/material.dart';

///設定ページ
///必要なもの⇨①開発者への問い合わせ

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

//Listに表示される配列リスト
// const List = ['開発者プロフィール','アプリについてのお問い合わせ','開発者のその他のアプリ','寄付','シェア','評価','開発者Twitter','開発者Instagram'];

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("設定"),
        // backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context,true);},
          ),
        ),
        actions: [
          InkWell(
            child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('完了',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
              ),
            ),
            ),
            onTap: () {
              Navigator.pop(context, true);},
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey)
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Colors.grey)
            ),
          ),
          child: Column(
            children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              ),
              Text("開発者のプロフィール",
                style: TextStyle(color: Colors.white,
                fontSize: 20.0),
                ),
              Text("アプリについてのお問い合わせ",
                style: TextStyle(color: Colors.white,
                    fontSize: 20.0),
              ),
              Text("開発者のその他のアプリ",
                style: TextStyle(color: Colors.white,
                    fontSize: 20.0),
              ),
              Text("寄付",
                style: TextStyle(color: Colors.white,
                    fontSize: 20.0),
              ),
              Text("シェア",
                style: TextStyle(color: Colors.white,
                    fontSize: 20.0),
              ),
              Text("評価",
                style: TextStyle(color: Colors.white,
                    fontSize: 20.0),
              ),
              Text("開発者のTwitter",
                style: TextStyle(color: Colors.white,
                    fontSize: 20.0),
              ),
              Text("開発者のInstagram",
                style: TextStyle(color: Colors.white,
                    fontSize: 20.0),
              ),
            ],
          ),
        )
      )
    );
  }
}
    //
    // Widget _settinglist(String title) {
    //   return GestureDetector(
    //     behavior: HitTestBehavior.opaque,
    //     child: Container(
    //       padding: EdgeInsets.all(8.0),
    //       decoration:  BoxDecoration(
    //         border:  Border(
    //             bottom: BorderSide(width: 1.0, color: Colors.grey)
    //         ),
    //       ),
    //         child:Row(
    //           children: <Widget>[
    //             Container(
    //               margin: EdgeInsets.all(10.0),
    //             ),
    //             Text(
    //               title,style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 20.0
    //             ),
    //             ),
    //           ],
    //         ),
    //       )
    //     );
    // }
    //
    //
