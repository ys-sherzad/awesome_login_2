import 'package:flutter/material.dart';
import 'Constants.dart';
import 'Colorlib.dart';

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
            color: Colorlib.inputIconBkground,
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
            color: Colorlib.background,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colorlib.shadow,
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
