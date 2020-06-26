import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Don\'t have an account?',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          // TextSpan(
          //     text: 'world!', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text: ' Sign up',
              style: TextStyle(fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()..onTap = () => print('click')),
        ],
      ),
    );
  }
}
