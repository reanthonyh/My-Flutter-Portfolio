import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class AnimatedGradientPainter extends CustomPainter {
  final double time;
  final ui.FragmentShader? shader;

  AnimatedGradientPainter({required this.time, this.shader});

  @override
  void paint(Canvas canvas, Size size) {
    if (shader == null) return;
    
    shader!
      ..setFloat(0, size.width)
      ..setFloat(1, size.height)
      ..setFloat(2, time);

    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..shader = shader,
    );
  }

  @override
  bool shouldRepaint(covariant AnimatedGradientPainter oldDelegate) =>
      time != oldDelegate.time;
}