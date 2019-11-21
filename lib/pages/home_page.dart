import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zindagi/utils/colors.dart';
import 'package:zindagi/widgets/sexy_tile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController(initialPage: 0);
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
              Icons.favorite,
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
          IconButton(
            icon: Icon(
              Icons.info,
              color: MyColors.primaryColor,
            ),
            onPressed: () {
              _pageController.animateToPage(
                2,
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
          SexyTile(
            child: Text('HI'),
          ),
          SexyTile(
            child: Text('Ok'),
          ),
          SexyTile(
            child: Text('by'),
          ),
        ],
      ),
    );
  }
}
