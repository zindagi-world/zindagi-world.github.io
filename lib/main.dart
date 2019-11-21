import 'package:flutter/material.dart';
import 'package:zindagi/pages/home_page.dart';
import 'package:zindagi/utils/colors.dart';

void main() => runApp(MyWebApp());

class MyWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zindagi',
      theme: ThemeData(
        primaryColor: MyColors.primaryColor,
        accentColor: MyColors.accentColor,
      ),
      home: MyHomePage(),
    );
  }
}
