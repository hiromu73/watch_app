

import 'package:flutter/material.dart';

///テキストページ
///どんな時に⇨格言一覧
///Quotationsに入力し保存できる⇨コピペの可能
class QuotationsPage extends StatefulWidget {
  @override
  _QuotationsPageState createState() => _QuotationsPageState();
}

class _QuotationsPageState extends State<QuotationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(30.0),
          shrinkWrap: true,
          children: listTiles
      ),
    );
  }
  List<Widget> listTiles = <Widget> [
    Container(
        decoration: new BoxDecoration(
          border: new Border(
              bottom: new BorderSide(color: Colors.white.withOpacity(0.3))
          ),
        ),
        child: ListTile(title: Text('朝の目覚め',textAlign: TextAlign.left,
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
        child: ListTile(title: Text('目標に向けて',textAlign: TextAlign.left,
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
        child: ListTile(title: Text('継続は力なり',textAlign: TextAlign.left,
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
        child: ListTile(title: Text('やる気が出ない',textAlign: TextAlign.left,
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
        child: ListTile(title: Text('元気を出したい',textAlign: TextAlign.left,
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
        child: ListTile(title: Text('',textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20.0),
        ),
        )
    ),
  ];
}


    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Quotations"),
    //     leading: Padding(
    //       padding: EdgeInsets.all(8.0),
    //       child: IconButton(
    //         icon: Icon(Icons.arrow_back),
    //         onPressed: (){
    //           Navigator.pop(context,true);
    //         }
    //       ),
    //     ),
    //     actions: [
    //       InkWell(
    //         child: Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: IconButton(
    //             icon: Icon(Icons.add),
    //             onPressed: (){
    //               //Quotations入力フォーム
    //               Navigator.push(context,MaterialPageRoute(builder:
    //               (context) => QuotationsWrite(),
    //               ));
    //             },
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );

