import 'Footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'Constants.dart';
import 'Input.dart';
import 'Button.dart';
import 'StaggeredEnterAnimation.dart';
import 'ButtonIcon.dart';

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
                child: AnimatedBuilder(
                    animation: animation.controller,
                    builder: (context, child) {
                      return Opacity(
                        opacity: animation.title.value,
                        child: Container(
                          child: Text('Login', style: kTitle),
                        ),
                      );
                    }),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            AnimatedBuilder(
                                animation: animation.controller,
                                builder: (context, child) {
                                  return Transform.translate(
                                    offset: Offset(animation.input1.value, 0),
                                    child: Input(
                                      backOffset: 1,
                                      frontOffset: animation.input1Front.value,
                                      backgroundPosition: 'right',
                                      icon: Icon(
                                        FontAwesome.envelope,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                      placeholder: 'Email',
                                    ),
                                  );
                                }),
                            SizedBox(
                              height: 16.0,
                            ),
                            AnimatedBuilder(
                              animation: animation.controller,
                              builder: (context, child) {
                                return Transform.translate(
                                  offset: Offset(animation.input2.value, 0),
                                  child: Input(
                                    backOffset: -1,
                                    frontOffset: animation.input2Front.value,
                                    backgroundPosition: 'left',
                                    icon: Icon(
                                      FontAwesome.key,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                    placeholder: 'Password',
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        AnimatedBuilder(
                            animation: animation.controller,
                            builder: (context, child) {
                              return Opacity(
                                opacity: animation.forgotText.value,
                                child: Container(
                                  height: 40.0,
                                  alignment: Alignment.centerRight,
                                  child: Text('Forgot password?',
                                      style: kForgotPassTextStyle),
                                ),
                              );
                            }),
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
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ButtonIcon(
                            icon: Icon(FontAwesome.google),
                            iconColor: Colors.red,
                          ),
                          ButtonIcon(
                            icon: Icon(FontAwesome.facebook),
                            iconColor: Colors.blue,
                          ),
                          ButtonIcon(
                            icon: Icon(FontAwesome.twitter),
                            iconColor: Colors.blue,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Footer(
                        animation: animation,
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
