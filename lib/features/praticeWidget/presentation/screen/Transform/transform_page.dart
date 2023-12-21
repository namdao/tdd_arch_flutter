import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

@RoutePage(name: 'TransformScreen')
class TransformPage extends StatefulWidget {
  const TransformPage({super.key});

  @override
  _FingerAnimationExampleState createState() => _FingerAnimationExampleState();
}

class _FingerAnimationExampleState extends State<TransformPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 2 * 3.14).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Matrix4 getRotationMatrix() {
    const double centerX = 100.0; // Tọa độ x của điểm tâm
    const double centerY = 100.0; // Tọa độ y của điểm tâm

    final matrix = Matrix4.identity()
      ..translate(centerX, centerY)
      ..rotateX(_animation.value)
      ..translate(-centerX, -centerY);

    return matrix;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Transform animation'),
          elevation: 0,
        ),
        body: Center(
          child: Transform(
            transform: getRotationMatrix(),
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                'Rotate',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ));
  }
}
