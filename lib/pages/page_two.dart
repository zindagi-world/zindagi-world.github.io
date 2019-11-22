import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zindagi/utils/colors.dart';
import 'package:zindagi/widgets/sexy_tile.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      child: StaggeredGridView.countBuilder(
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemBuilder: (context, index) => SexyTile(),
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      ),
    );
  }
}
