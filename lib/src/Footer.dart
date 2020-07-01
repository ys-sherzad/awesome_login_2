import 'Constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final VoidCallback onSignup;
  Footer({Key key, this.onSignup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Don\'t have an account?',
        style: kBottomText,
        children: <TextSpan>[
          TextSpan(
              text: ' Sign up',
              style: TextStyle(fontWeight: FontWeight.w800),
              recognizer: TapGestureRecognizer()..onTap = onSignup),
        ],
      ),
    );
  }
}
