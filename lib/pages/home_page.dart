import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zindagi/utils/colors.dart';
import 'package:zindagi/utils/ui_helpers.dart';
import 'package:zindagi/widgets/sexy_tile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> itemNames = [
      'Spreading',
      'Menstrual Hygiene',
      'Awareness',
    ];
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Zindagi',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w600,
                    fontSize: 22.0,
                    fontStyle: FontStyle.italic,
                    color: MyColors.dark,
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: 5,
                children: List.generate(
                  itemNames.length,
                  (index) {
                    return Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Hero(
                          tag: 'tile$index',
                          child: SexyTile(),
                        ),
                        Container(
                          margin: EdgeInsets.all(15.0),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Hero(
                                    tag: 'title${index}',
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        '${itemNames[index]}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22.0,
                                          color: MyColors.dark,
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              splashColor: MaterialColors.pink,
                              borderRadius: BorderRadius.circular(15.0),
                              onTap: () {
                                doNothing();
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
