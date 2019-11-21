import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zindagi/utils/colors.dart';
import 'package:zindagi/utils/ui_helpers.dart';

class SexyTile extends StatelessWidget {
  const SexyTile({
    this.child,
    this.onTap,
  });
  final Widget child;
  final Function() onTap;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Material(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(6.0),
        elevation: 3.0,
        shadowColor: ShadowColors.dark,
        child: InkWell(
          child: child,
          borderRadius: BorderRadius.circular(6.0),
          onTap: onTap == null ? doNothing : () => onTap(),
        ),
      ),
    );
  }
}
