// main.dart

import 'package:custom_paint_demo/shaped_painter.dart';
import 'package:flutter/material.dart';

class MyPainter extends StatelessWidget {
  const MyPainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lines'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomPaint(
          painter: ShapePainter(),
          child: Container(),
        ),
      ),
    );
  }
}
