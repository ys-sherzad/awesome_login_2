import 'package:flutter/material.dart';

class StaggeredAnimation {
  final AnimationController controller;
  final Animation<double> title;
  final Animation<double> input1;
  final Animation<double> input1Front;
  final Animation<double> input2;
  final Animation<double> input2Front;
  final Animation<double> input3;
  final Animation<double> input3Front;
  final Animation<double> button;
  final Animation<double> forgotText;
  final Animation<double> socialBtn1;
  final Animation<double> socialBtn2;
  final Animation<double> socialBtn3;
  final Animation<double> backBtn;
  final Animation<double> footer;
  final Size size;

  StaggeredAnimation(this.controller, this.size)
      : title = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.1, 0.5, curve: Curves.easeInOut),
          ),
        ),
        input1 = Tween<double>(begin: size.width, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.1, 0.4, curve: Curves.easeInOutCubic),
          ),
        ),
        input1Front = Tween<double>(begin: 1, end: -1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.4, 0.6, curve: Curves.easeInOutCubic),
          ),
        ),
        input2 = Tween<double>(begin: -size.width, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.3, 0.6, curve: Curves.easeInOutCubic),
          ),
        ),
        input2Front = Tween<double>(begin: -1, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.6, 0.8, curve: Curves.easeInOutCubic),
          ),
        ),
        input3 = Tween<double>(begin: -size.width, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.5, 0.8, curve: Curves.easeInOutCubic),
          ),
        ),
        input3Front = Tween<double>(begin: -1, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.8, 1.0, curve: Curves.easeInOutCubic),
          ),
        ),
        button = Tween<double>(begin: size.width, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.6, 1, curve: Curves.easeInOutCubic),
          ),
        ),
        forgotText = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.8, 1.0, curve: Curves.easeInOut),
          ),
        ),
        socialBtn1 = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.7, 1.0, curve: Curves.easeInOut),
          ),
        ),
        socialBtn2 = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.8, 1.0, curve: Curves.easeInOut),
          ),
        ),
        socialBtn3 = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.9, 1.0, curve: Curves.easeInOut),
          ),
        ),
        footer = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.9, 1.0, curve: Curves.easeInOut),
          ),
        ),
        backBtn = Tween<double>(begin: -size.width, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.8, 1, curve: Curves.easeInOutCubic),
          ),
        );
}
