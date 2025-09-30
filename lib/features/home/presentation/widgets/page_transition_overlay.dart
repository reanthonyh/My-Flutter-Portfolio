import 'package:flutter/material.dart';

class PageTransitionOverlay extends StatelessWidget {
  final AnimationController controller;
  final String sectionName;

  const PageTransitionOverlay({
    super.key,
    required this.controller,
    required this.sectionName,
  });

  static const _slideBegin = Offset(1, 0);
  static const _slideEnd = Offset(-1, 0);
  static const _fadeInterval = Interval(0.0, 0.5, curve: Curves.easeIn);
  static const _fadeReverseInterval = Interval(0.5, 1.0, curve: Curves.easeOut);
  static const _textAlignment = Alignment(-0.9, 0.9);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final slideOffset = Tween<Offset>(
          begin: _slideBegin,
          end: _slideEnd,
        ).animate(controller).value;

        final fadeOpacity = Tween<double>(begin: 0.0, end: 1.0)
            .animate(
              CurvedAnimation(
                parent: controller,
                curve: _fadeInterval,
                reverseCurve: _fadeReverseInterval,
              ),
            )
            .value;

        final width = MediaQuery.sizeOf(context).width;
        final isLight = MediaQuery.platformBrightnessOf(context) == Brightness.light;

        return Transform.translate(
          offset: Offset(slideOffset.dx * width, 0),
          child: Opacity(
            opacity: fadeOpacity,
            child: Container(
              color: isLight ? Colors.white : Colors.black,
              alignment: _textAlignment,
              child: Text(
                sectionName,
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}