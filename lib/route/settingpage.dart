

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
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(30.0),
        shrinkWrap: true,
        children: listTiles
      )
    );
  }
  ///各設定繊維を作っていくonTap
   List<Widget> listTiles =  <Widget>[
     Container(
       decoration: new BoxDecoration(
         border: new Border(
           bottom: new BorderSide(color: Colors.white.withOpacity(0.3))
         ),
       ),
       child: ListTile(title: Text('開発者のプロフィール',textAlign: TextAlign.left,
         style: TextStyle(fontSize: 20.0),
       ),
     )
    ),
     Container(
         decoration: new BoxDecoration(
           border: new Border(
               bottom: new BorderSide(color: Colors.white.withOpacity(0.3))
           ),
         ),
         child: ListTile(title: Text('アプリについてのお問い合わせ',textAlign: TextAlign.left,
           style: TextStyle(fontSize: 20.0),
         ),
         )
     ),
     Container(
         decoration: new BoxDecoration(
           border: new Border(
               bottom: new BorderSide(color: Colors.white.withOpacity(0.3))
           ),
         ),
         child: ListTile(title: Text('開発者のその他のアプリ',textAlign: TextAlign.left,
           style: TextStyle(fontSize: 20.0),
         ),
         )
     ),
     Container(
         decoration: new BoxDecoration(
           border: new Border(
               bottom: new BorderSide(color: Colors.white.withOpacity(0.3))
           ),
         ),
         child: ListTile(title: Text('寄付',textAlign: TextAlign.left,
           style: TextStyle(fontSize: 20.0),
         ),
         )
     ),
     Container(
         decoration: new BoxDecoration(
           border: new Border(
               bottom: new BorderSide(color: Colors.white.withOpacity(0.3))
           ),
         ),
         child: ListTile(title: Text('シェアする',textAlign: TextAlign.left,
           style: TextStyle(fontSize: 20.0),
         ),
         )
     ),
     Container(
         decoration: new BoxDecoration(
           border: new Border(
               bottom: new BorderSide(color: Colors.white.withOpacity(0.3))
           ),
         ),
         child: ListTile(title: Text('評価',textAlign: TextAlign.left,
           style: TextStyle(fontSize: 20.0),
         ),
         )
     ),
     Container(
         decoration: new BoxDecoration(
           border: new Border(
               bottom: new BorderSide(color: Colors.white.withOpacity(0.3))
           ),
         ),
         child: ListTile(title: Text('開発者のTwitter',textAlign: TextAlign.left,
           style: TextStyle(fontSize: 20.0),
         ),
         )
     ),
     Container(
         decoration: new BoxDecoration(
           border: new Border(
               bottom: new BorderSide(color: Colors.white.withOpacity(0.3))
           ),
         ),
         child: ListTile(title: Text('開発者のInstagram',textAlign: TextAlign.left,
           style: TextStyle(fontSize: 20.0),
         ),
         )
     ),
  ];
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
