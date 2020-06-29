import 'package:awesome_login_2/src/Constants.dart';
import 'package:awesome_login_2/src/StaggeredEnterAnimation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final StaggeredEnterAnimation animation;
  Footer({Key key, this.animation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Don\'t have an account?',
        style: kBottomText,
        children: <TextSpan>[
          // TextSpan(
          //     text: 'world!', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text: ' Sign up',
              style: TextStyle(fontWeight: FontWeight.w800),
              recognizer: TapGestureRecognizer()
                ..onTap = () => animation.controller.reverse()),
        ],
      ),
    );
  }
}
