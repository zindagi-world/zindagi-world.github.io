import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zindagi/utils/colors.dart';
import 'package:zindagi/widgets/sexy_tile.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      child: StaggeredGridView.countBuilder(
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemBuilder: (context, index) => _Tile(index),
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      ),
    );
  }
}

class IntSize {
  const IntSize(this.width, this.height);

  final int width;
  final int height;
}

class _Tile extends StatelessWidget {
  const _Tile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    Widget myChild;
    if (index == 1) {
      myChild = Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Zindagi, a youth activist '
            'organization, created with the aim to spread awareness and '
            'educate people on socio-economic issues pertaining to '
            'parameters influencing the lifestyle and wellbeing of our '
            'society. Our main objective is to work for social development '
            'of underprivileged individuals and encourage community '
            'building. We aim to undertake various projects that will help '
            'us attain this goal through community outreach. We are working'
            ' on several fundraising programs which will enable us to '
            'easily conduct these awareness drives. The projects which our '
            'organisation will undertake represent small steps in the path '
            'to creating an easier world to live in.',
            style: TextStyle(fontSize: 16.0),
          ));
    } else {
      myChild = Container(child: Image.asset('assets/images/${index + 1}.jpg'));
    }
    return SexyTile(
      child: myChild,
    );
  }
}
