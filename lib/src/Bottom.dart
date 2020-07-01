import 'package:flutter/material.dart';
import 'Colorlib.dart';

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
                  Colorlib.primary,
                  Colorlib.secondary,
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
