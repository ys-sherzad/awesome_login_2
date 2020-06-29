import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'Constants.dart';

// const _color2 = Color.fromRGBO(225, 239, 232, 1);
// const _color1 = Color.fromRGBO(144, 165, 211, 1);

// const _color = Color.fromRGBO(182, 200, 221, 1);

const _color1 = Color(0xffff5e62);
const _colorFront = Color(0xfffffdf8);
const _color2 = Color(0xffffedbc);

// final _color =

class Input extends StatelessWidget {
  final double backOffset;
  final double frontOffset;
  final String placeholder;
  final String backgroundPosition;
  final Icon icon;

  const Input({
    Key key,
    this.backOffset = 0,
    this.frontOffset = 0,
    this.placeholder,
    this.icon,
    this.backgroundPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    EdgeInsets sidePadding = backgroundPosition == 'left'
        ? EdgeInsets.only(left: 20.0)
        : EdgeInsets.only(right: 20.0);
    Alignment bkPosition = backgroundPosition == 'left'
        ? Alignment.centerLeft
        : Alignment.centerRight;
    Alignment placeholderPosition =
        backgroundPosition == 'left' ? Alignment(-0.22, 0) : Alignment(0.15, 0);
    return Stack(children: [
      Align(
        // right: 27,
        alignment: Alignment(backOffset, 0),
        child: Container(
          height: 50.0,
          width: size.width * 0.2,
          padding: sidePadding,
          decoration: BoxDecoration(
            color: _color1,
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Align(
            alignment: bkPosition,
            child: icon,
          ),
        ),
      ),
      Align(
        alignment: Alignment(frontOffset, 0),
        child: Container(
          alignment: placeholderPosition,
          height: 50.0,
          width: size.width * 0.78,
          decoration: BoxDecoration(
            color: _colorFront,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0.0, 5.0),
                blurRadius: 9.0,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Text(placeholder, style: kInputTextStyle),
        ),
      ),
    ]);
  }
}
