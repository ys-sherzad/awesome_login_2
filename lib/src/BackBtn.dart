import 'package:flutter/material.dart';
import 'Colorlib.dart';

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
                Colorlib.primary,
                Colorlib.secondary,
              ],
            ),
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colorlib.shadow,
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
                color: Colorlib.background,
              ),
              child: Center(
                child: Text('Go back',
                    style: TextStyle(
                        color: Colorlib.primary,
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
