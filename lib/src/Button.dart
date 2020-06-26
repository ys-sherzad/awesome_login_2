import 'package:flutter/material.dart';

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
        child: Text(title),
      ),
    );
  }
}
