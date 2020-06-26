import 'package:flutter/material.dart';

const _color1 = Color.fromRGBO(225, 239, 232, 1);
const _color2 = Color.fromRGBO(144, 165, 211, 1);

class Button extends StatelessWidget {
  final String title;
  const Button({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 55.0,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [_color2, _color1],
        ),
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
        child: Text(title),
      ),
    );
  }
}
