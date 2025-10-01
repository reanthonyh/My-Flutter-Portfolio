import 'package:flutter/material.dart';
import 'dart:ui';

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
  static const _fadeInInterval = Interval(0.0, 0.4, curve: Curves.easeOutCubic);
  static const _fadeOutInterval = Interval(0.6, 1.0, curve: Curves.easeInCubic);
  static const _scaleInterval = Interval(0.2, 0.8, curve: Curves.easeOutBack);
  static const _blurInterval = Interval(0.0, 0.5, curve: Curves.easeOut);
  static const _textAlignment = Alignment(-0.9, 0.9);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.sizeOf(context);

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final slideOffset = Tween<Offset>(begin: _slideBegin, end: _slideEnd)
            .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOutCubic))
            .value;

        final fadeOpacity = controller.value < 0.5
            ? Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(CurvedAnimation(parent: controller, curve: _fadeInInterval)).value
            : Tween<double>(begin: 1.0, end: 0.0)
                  .animate(CurvedAnimation(parent: controller, curve: _fadeOutInterval))
                  .value;

        final scale = Tween<double>(
          begin: 0.8,
          end: 1.0,
        ).animate(CurvedAnimation(parent: controller, curve: _scaleInterval)).value;

        final blurSigma = Tween<double>(
          begin: 0.0,
          end: 8.0,
        ).animate(CurvedAnimation(parent: controller, curve: _blurInterval)).value;

        return Transform.translate(
          offset: Offset(slideOffset.dx * size.width, 0),
          child: Transform.scale(
            scale: scale,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
              child: Opacity(
                opacity: fadeOpacity,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: colorScheme.surfaceContainerLow.withValues(alpha: 0.95),
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme.shadow.withValues(alpha: 0.1),
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: _textAlignment,
                    child: Text(
                      sectionName,
                      style: TextStyle(
                        color: colorScheme.onSurface,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
