import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final double backOffset;
  final double frontOffset;
  final bool backRadiusLeft;
  final String placeholder;

  const Input({
    Key key,
    this.backOffset = 0,
    this.frontOffset = 0,
    this.backRadiusLeft,
    this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(children: [
      Align(
        // right: 27,
        alignment: Alignment(backOffset, 0),
        child: Container(
          height: 55.0,
          width: size.width * 0.4,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topRight: !backRadiusLeft ? Radius.circular(30) : Radius.zero,
              bottomRight:
                  !backRadiusLeft ? Radius.circular(30.0) : Radius.zero,
              topLeft: backRadiusLeft ? Radius.circular(30) : Radius.zero,
              bottomLeft: backRadiusLeft ? Radius.circular(30) : Radius.zero,
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment(frontOffset, 0),
        child: Container(
          height: 55.0,
          width: size.width * 0.78,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(105, 105, 105, 0.3),
                offset: Offset(0.0, 3.0),
                blurRadius: 12.0,
                spreadRadius: 3,
              ),
            ],
          ),
          child: Center(
            child: Text(placeholder),
          ),
        ),
      ),
    ]);
  }
}
