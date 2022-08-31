import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './animated_controller.dart';

class MateriAnimatedWidget extends StatelessWidget {
  MateriAnimatedWidget({Key? key}) : super(key: key);

  final AnimatedController _animatedC = Get.put(AnimatedController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Widget"),
      ),
      body: Center(
        child: MyAnimatedWidget(
          animatedC: _animatedC.animationC,
        ),
      ),
    );
  }
}

class MyAnimatedWidget extends AnimatedWidget {
  const MyAnimatedWidget({
    Key? key,
    required this.animatedC,
  }) : super(key: key, listenable: animatedC);

  final AnimationController animatedC;

  get progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: progress.value * 2 * pi,
      child: Container(
        height: 200,
        width: 200,
        color: Colors.amber,
      ),
    );
  }
}
