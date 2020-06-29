import 'package:flutter/material.dart';

const _color1 = Color(0xffed4264);
const _color2 = Color(0xffffedbc);
const _color3 = Color(0xff7be495);
// const _color2 = Color.fromRGBO(225, 239, 232, 1);
// const _color1 = Color.fromRGBO(144, 165, 211, 1);

class Top extends StatelessWidget {
  const Top({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Positioned(
        top: 0,
        child: ClipPath(
          clipper: DrawClipper(),
          child: Container(
            height: size.height / 2,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [_color1, _color2],
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
    path.lineTo(0, size.height / 1.5);
    path.lineTo(size.width * 0.2, size.height);

    var crtlPoint = Offset(size.width / 20, size.height / 3);
    var endPoint = Offset(size.width, size.height / 3.2);
    path.quadraticBezierTo(
        crtlPoint.dx, crtlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
