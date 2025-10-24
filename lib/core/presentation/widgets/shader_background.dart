import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'shader_painters.dart';

class ShaderBackground extends StatefulWidget {
  const ShaderBackground({super.key});

  @override
  State<ShaderBackground> createState() => _ShaderBackgroundState();
}

class _ShaderBackgroundState extends State<ShaderBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  ui.FragmentShader? _shader;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 10), vsync: this)
      ..repeat(reverse: true);
    _loadShader();
  }

  Future<void> _loadShader() async {
    try {
      final program = await ui.FragmentProgram.fromAsset(
        'shaders/animated_gradient.frag',
      );
      setState(() => _shader = program.fragmentShader());
    } catch (e) {
      debugPrint('Failed to load shader: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => CustomPaint(
        painter: AnimatedGradientPainter(time: _controller.value * 10, shader: _shader),
        child: const SizedBox.expand(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _shader?.dispose();
    super.dispose();
  }
}
