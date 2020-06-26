import 'package:flutter/material.dart';

const _color1 = Color.fromRGBO(225, 239, 232, 1);
const _color2 = Color.fromRGBO(144, 165, 211, 1);

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
          child: Container(
            height: size.height / 2.8,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [
                  _color1,
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
