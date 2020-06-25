import 'package:flutter/material.dart';

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
            height: size.height / 3.5,
            width: size.width,
            decoration: BoxDecoration(color: Colors.purple),
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

    var crtlPoint = Offset(size.width * 0.95, size.height * 0.3);
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
