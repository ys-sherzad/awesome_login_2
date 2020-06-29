import 'Constants.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final Icon icon;
  final Color iconColor;

  const ButtonIcon({Key key, this.icon, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: kShadowColor,
      borderRadius: BorderRadius.circular(32.0),
      elevation: 8,
      clipBehavior: Clip.hardEdge,
      color: Colors.white,
      child: Ink(
        height: 50,
        width: 50,
        decoration: const ShapeDecoration(
          shape: CircleBorder(),
        ),
        child: IconButton(
          iconSize: 30.0,
          icon: icon,
          color: iconColor,
          onPressed: () {},
        ),
      ),
    );
  }
}
