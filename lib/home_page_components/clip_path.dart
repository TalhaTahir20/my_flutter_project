import 'package:flutter/material.dart';

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path shape1 = Path();

    shape1.lineTo(0.0, size.height - 40);
    shape1.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    shape1.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    shape1.lineTo(size.width, 0.0);
    shape1.close();

    return shape1;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}