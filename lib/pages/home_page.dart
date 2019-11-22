import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zindagi/pages/page_one.dart';
import 'package:zindagi/pages/page_two.dart';
import 'package:zindagi/utils/colors.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: MyColors.white,
        title: Text(
          'Zindagi',
          style: TextStyle(
            color: MyColors.primaryColor,
            fontWeight: FontWeight.w700,
            fontSize: 22.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: MyColors.primaryColor,
            ),
            onPressed: () {
              _pageController.animateToPage(
                0,
                curve: Curves.easeOut,
                duration: Duration(
                  milliseconds: 750,
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.attach_money,
              color: MyColors.primaryColor,
            ),
            onPressed: () {
              _pageController.animateToPage(
                1,
                curve: Curves.easeOut,
                duration: Duration(
                  milliseconds: 750,
                ),
              );
            },
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          PageOne(),
          PageTwo(),
        ],
      ),
    );
  }
}
