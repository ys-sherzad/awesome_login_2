import 'package:awesome_login_2/src/Constants.dart';
import 'package:flutter/material.dart';

const _color1 = Color(0xffed4264);
const _color2 = Color(0xffffedbc);

class Button extends StatelessWidget {
  final String title;
  const Button({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        print('BUTTON PRESSED');
      },
      child: Container(
        height: 50.0,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              _color1,
              _color2,
            ],
          ),
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0.0, 3.0),
              blurRadius: 12.0,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Center(
          child: Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0)),
        ),
      ),
    );
  }
}
