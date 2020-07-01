import 'package:awesome_login_2/src/Constants.dart';
import 'package:flutter/material.dart';

const _color1 = Color(0xffed4264);
const _color2 = Color(0xffffedbc);

class BackBtn extends StatelessWidget {
  final VoidCallback onBackBtnPress;

  const BackBtn({Key key, this.onBackBtnPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        onTap: onBackBtnPress,
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
            child: Container(
              height: 48.0,
              width: size.width - 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
              ),
              child: Center(
                child: Text('Go back',
                    style: TextStyle(
                        color: Color(0xffed4264),
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
