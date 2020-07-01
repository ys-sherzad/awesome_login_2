import 'package:flutter/material.dart';
import 'Colorlib.dart';

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
                colors: [Colorlib.primary, Colorlib.secondary],
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
