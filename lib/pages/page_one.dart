import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zindagi/utils/colors.dart';
import 'package:zindagi/widgets/sexy_tile.dart';

final Uint8List kTransparentImage = Uint8List.fromList(<int>[
  0x89,
  0x50,
  0x4E,
  0x47,
  0x0D,
  0x0A,
  0x1A,
  0x0A,
  0x00,
  0x00,
  0x00,
  0x0D,
  0x49,
  0x48,
  0x44,
  0x52,
  0x00,
  0x00,
  0x00,
  0x01,
  0x00,
  0x00,
  0x00,
  0x01,
  0x08,
  0x06,
  0x00,
  0x00,
  0x00,
  0x1F,
  0x15,
  0xC4,
  0x89,
  0x00,
  0x00,
  0x00,
  0x0A,
  0x49,
  0x44,
  0x41,
  0x54,
  0x78,
  0x9C,
  0x63,
  0x00,
  0x01,
  0x00,
  0x00,
  0x05,
  0x00,
  0x01,
  0x0D,
  0x0A,
  0x2D,
  0xB4,
  0x00,
  0x00,
  0x00,
  0x00,
  0x49,
  0x45,
  0x4E,
  0x44,
  0xAE,
]);

class PageOne extends StatelessWidget {
  PageOne() : _sizes = _createSizes(_kItemCount).toList();
  static const int _kItemCount = 1000;
  final List<IntSize> _sizes;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
//      child: StaggeredGridView.countBuilder(
//        crossAxisCount: 4,
//        itemCount: 8,
//        itemBuilder: (BuildContext context, int index) => SexyTile(
//          color: MyColors.primaryColor,
//          child: Center(
//            child: Image.asset('assets/images/${index + 1}.jpg'),
//          ),
//        ),
//        staggeredTileBuilder: (int index) =>
//            StaggeredTile.count(2, index.isEven ? 2 : 1),
//      ),
      child: StaggeredGridView.countBuilder(
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemBuilder: (context, index) => _Tile(index, _sizes[index]),
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      ),
    );
  }
}

List<IntSize> _createSizes(int count) {
  Random rnd = Random();
  return List.generate(
      count, (i) => IntSize((rnd.nextInt(500) + 200), rnd.nextInt(800) + 200));
}

class IntSize {
  const IntSize(this.width, this.height);

  final int width;
  final int height;
}

class _Tile extends StatelessWidget {
  const _Tile(this.index, this.size);

  final IntSize size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SexyTile(
      color: MyColors.primaryColor,
      child: Image.asset('assets/images/${index + 1}.jpg'),
    );
  }
}
