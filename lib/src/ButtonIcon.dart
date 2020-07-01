import 'package:flutter/material.dart';
import 'Colorlib.dart';

class ButtonIcon extends StatelessWidget {
  final Icon icon;
  final Color iconColor;

  const ButtonIcon({Key key, this.icon, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colorlib.shadow,
      borderRadius: BorderRadius.circular(32.0),
      elevation: 8,
      clipBehavior: Clip.hardEdge,
      color: Colorlib.background,
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
