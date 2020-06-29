import 'package:flutter/material.dart';

// const _color1 = Color.fromRGBO(225, 239, 232, 1);
// const _color2 = Color.fromRGBO(144, 165, 211, 1);
// const _color1 = Color(0xffda4453);
// const _color2 = Color(0xff89216b);
// const _color2 = Color.fromRGBO(225, 239, 232, 1);
// const _color1 = Color.fromRGBO(144, 165, 211, 1);
const _color1 = Color(0xffed4264);
const _color2 = Color(0xffffedbc);
const _color3 = Color(0xff7be495);

class Bottom extends StatelessWidget {
  const Bottom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Positioned(
        bottom: 0,
        child: ClipPath(
          clipper: DrawClipper(),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 600),
            height: size.height / 3,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _color1,
                  _color2,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DrawClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.moveTo(size.width * 0.8, size.height);

    var crtlPoint = Offset(size.width * 0.98, size.height * 0.4);
    var endPoint = Offset(size.width * 0.7, 0);
    path.quadraticBezierTo(
        crtlPoint.dx, crtlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
