import 'dart:math' as math;
import 'package:lynxbe_koby_project/core/constants/consts.dart';
import 'package:flutter/material.dart';

class CircularProgressImage extends StatefulWidget {
  final double? size;
  const CircularProgressImage({super.key, this.size});

  @override
  State<CircularProgressImage> createState() => _CircularProgressImageState();
}

class _CircularProgressImageState extends State<CircularProgressImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  _CircularProgressImageState();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            return Transform.rotate(
              angle: _controller.value * 2 * math.pi,
              child: child,
            );
          },
          child: Image.asset(
            appLogo,
            height: widget.size ?? 60,
          ),
        ),
      ),
    );
  }
}
