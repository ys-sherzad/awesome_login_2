import 'package:awesome_login_2/src/StaggeredEnterAnimation.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';
import 'Input.dart';
import 'Button.dart';
import 'StaggeredEnterAnimation.dart';

class Content extends StatelessWidget {
  final StaggeredEnterAnimation animation;
  final Size size;
  Content({
    Key key,
    this.size,
    @required AnimationController controller,
  })  : animation = StaggeredEnterAnimation(controller, size),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: size.height / 1.3,
        width: size.width,
        // decoration: BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 20.0, left: 20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  // color: Colors.purple,
                  child: Text('Login', style: kTitle),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AnimatedBuilder(
                            animation: animation.controller,
                            builder: (context, child) {
                              return Transform.translate(
                                offset: Offset(animation.input1.value, 0),
                                child: Input(
                                  // backOffset: 1,
                                  // frontOffset: -1,

                                  backOffset: 1,
                                  frontOffset: animation.input1Front.value,
                                  backRadiusLeft: false,
                                  placeholder: 'Email',
                                ),
                              );
                            }),
                        AnimatedBuilder(
                            animation: animation.controller,
                            builder: (context, child) {
                              return Transform.translate(
                                offset: Offset(animation.input2.value, 0),
                                child: Input(
                                  // backOffset: -1,
                                  // frontOffset: 1,

                                  backOffset: -1,
                                  frontOffset: animation.input2Front.value,
                                  backRadiusLeft: true,
                                  placeholder: 'Password',
                                ),
                              );
                            }),
                        Container(
                          height: 40.0,
                          alignment: Alignment.centerRight,
                          child: Text('Forgot password?'),
                        ),
                        AnimatedBuilder(
                            animation: animation.controller,
                            builder: (context, child) {
                              return Transform.translate(
                                offset: Offset(animation.button.value, 0),
                                child: Button(
                                  title: 'Login',
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
