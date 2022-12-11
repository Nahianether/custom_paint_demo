// main.dart

import 'package:custom_paint_demo/shaped_painter.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class MyPainter extends StatefulWidget {
  const MyPainter({super.key});

  @override
  State<MyPainter> createState() => _MyPainterState();
}

class _MyPainterState extends State<MyPainter> with TickerProviderStateMixin {
  var sides = 3.0;
  Animation<double>? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    Tween<double> rotationTween = Tween(begin: -math.pi, end: math.pi);

    animation = rotationTween.animate(controller!)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller!.repeat();
        } else if (status == AnimationStatus.dismissed) {
          controller!.forward();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lines'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomPaint(
          painter: ShapePainter(sides, _radius, animation.value),
          child: Container(),
        ),
      ),
    );
  }
}
