

import 'package:flutter/material.dart';
import 'package:watch_app/route/quotationspage.dart';

//ヘッダー部分
class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          //左端にアイコン
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          ),
          //右側にアイコン
          actions: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add),
            )
          ],
          title: Text('QuotationTimer'),
          backgroundColor: Colors.black45,
          centerTitle: true,
        ),
    );
  }
}
