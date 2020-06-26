import 'package:flutter/material.dart';

class StaggeredEnterAnimation {
  final AnimationController controller;
  final Animation<double> input1;
  final Animation<double> input1Front;
  final Animation<double> input2;
  final Animation<double> input2Front;
  final Animation<double> button;
  final Size size;

  StaggeredEnterAnimation(this.controller, this.size)
      : input1 = Tween<double>(begin: size.width, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0, 1, curve: Curves.elasticInOut),
          ),
        ),
        input1Front = Tween<double>(begin: 1, end: -1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.8, 1, curve: Curves.easeInOut),
          ),
        ),
        input2 = Tween<double>(begin: -size.width, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0, 1, curve: Curves.elasticInOut),
          ),
        ),
        input2Front = Tween<double>(begin: -1, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.8, 1, curve: Curves.easeInOut),
          ),
        ),
        button = Tween<double>(begin: size.width, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0, 1, curve: Curves.elasticInOut),
          ),
        );
}
