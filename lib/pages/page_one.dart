import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zindagi/utils/colors.dart';
import 'package:zindagi/widgets/sexy_tile.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.primaryColor,
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => SexyTile(
          child: Center(
            child: Text('Tile $index'),
          ),
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
      ),
    );
  }
}
