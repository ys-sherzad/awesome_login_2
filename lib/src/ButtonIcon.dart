import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ButtonIcon extends StatelessWidget {
  final Icon icon;
  final Color iconColor;

  const ButtonIcon({Key key, this.icon, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
