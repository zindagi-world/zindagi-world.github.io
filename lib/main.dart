import 'package:flutter/material.dart';
import 'package:zindagi/pages/home_page.dart';

void main() => runApp(MyWebApp());

class MyWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zindagi',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}
