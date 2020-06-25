import 'package:flutter/material.dart';
import 'src/Bottom.dart';
import 'src/Top.dart';

final kTitle = TextStyle(color: Colors.red, fontSize: 40.0);

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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
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
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: size.height / 1.2,
                    width: size.width,
                    // decoration: BoxDecoration(color: Colors.blue),
                    child: Align(
                      alignment: Alignment(0.8, -0.9),
                      child: Text('hello', style: kTitle),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
