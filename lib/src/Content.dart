import 'Colorlib.dart';
import 'Footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'Constants.dart';
import 'Input.dart';
import 'Button.dart';
import 'StaggeredAnimation.dart';
import 'ButtonIcon.dart';
import 'BackBtn.dart';

class Content extends StatelessWidget {
  final StaggeredAnimation animation;
  final VoidCallback switchScreen;
  final VoidCallback goBack;
  final Size size;
  final String currentPage;
  Content({
    Key key,
    this.size,
    this.switchScreen,
    this.currentPage,
    this.goBack,
    @required AnimationController controller,
  })  : animation = StaggeredAnimation(controller, size),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    String _title = currentPage == 'Login' ? 'Login' : 'Register';
    String _input1Placeholer = 'Email';
    String _input2Placeholer = 'Password';
    String _input3Placeholder = 'Confirm password';
    MainAxisAlignment axisAlignment = currentPage == 'Login'
        ? MainAxisAlignment.spaceEvenly
        : MainAxisAlignment.spaceAround;

    return Positioned(
      bottom: 0,
      child: Container(
        height: size.height / 1.3,
        width: size.width,
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
                          child: Text(_title, style: kTitle),
                        ),
                      );
                    }),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60.0),
                    child: Column(
                      mainAxisAlignment: axisAlignment,
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
                                        color: Colorlib.background,
                                        size: 20.0,
                                      ),
                                      placeholder: _input1Placeholer,
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
                                      color: Colorlib.background,
                                      size: 22.0,
                                    ),
                                    placeholder: _input2Placeholer,
                                  ),
                                );
                              },
                            ),
                            if (currentPage == 'Register')
                              SizedBox(
                                height: 16.0,
                              ),
                            if (currentPage == 'Register')
                              AnimatedBuilder(
                                animation: animation.controller,
                                builder: (context, child) {
                                  return Transform.translate(
                                    offset: Offset(animation.input3.value, 0),
                                    child: Input(
                                      backOffset: -1,
                                      frontOffset: animation.input3Front.value,
                                      backgroundPosition: 'left',
                                      icon: Icon(
                                        FontAwesome.key,
                                        color: Colorlib.background,
                                        size: 22.0,
                                      ),
                                      placeholder: _input3Placeholder,
                                    ),
                                  );
                                },
                              ),
                          ],
                        ),
                        if (currentPage == 'Login')
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
                                title: _title,
                              ),
                            );
                          },
                        ),
                        if (currentPage == 'Register')
                          AnimatedBuilder(
                            animation: animation.controller,
                            builder: (context, child) {
                              return Transform.translate(
                                offset: Offset(animation.backBtn.value, 0),
                                child: BackBtn(onBackBtnPress: goBack),
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              if (currentPage == 'Login')
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
                            ScaleTransition(
                              scale: animation.socialBtn1,
                              child: ButtonIcon(
                                icon: Icon(FontAwesome.google),
                                iconColor: Colorlib.google,
                              ),
                            ),
                            ScaleTransition(
                              scale: animation.socialBtn2,
                              child: ButtonIcon(
                                icon: Icon(FontAwesome.facebook),
                                iconColor: Colorlib.fb,
                              ),
                            ),
                            ScaleTransition(
                              scale: animation.socialBtn2,
                              child: ButtonIcon(
                                icon: Icon(FontAwesome.twitter),
                                iconColor: Colorlib.twitter,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        ScaleTransition(
                          scale: animation.footer,
                          child: Footer(onSignup: switchScreen),
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
