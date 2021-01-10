

import 'package:flutter/material.dart';
import 'package:watch_app/homewatch.dart';
import 'header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quotations Timer',
      theme: new ThemeData.dark(
      ),
      home: HomeWatch(),
    );
  }
}
