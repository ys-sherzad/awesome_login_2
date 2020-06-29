import 'dart:async';

import 'package:flutter/material.dart';
import 'src/Bottom.dart';
import 'src/Content.dart';
import 'src/Top.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    Timer(Duration(milliseconds: 200), () {
      _controller.forward();
    });

    // Timer(Duration(milliseconds: 2000), () {
    //   _controller.reverse();
    // });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xfffffdf8),
        body: SafeArea(
          top: false,
          bottom: false,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              // alignment: Alignment.center,
              // fit: StackFit.loose,
              children: [
                Top(),
                Bottom(),
                Content(controller: _controller, size: size),
              ],
            ),
          ),
        ));
  }
}
