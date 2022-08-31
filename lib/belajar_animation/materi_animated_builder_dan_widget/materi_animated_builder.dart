import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './animated_controller.dart';

class MateriAnimatedBuilder extends StatelessWidget {
  MateriAnimatedBuilder({Key? key}) : super(key: key);

  final AnimatedController _animatedC = Get.put(AnimatedController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Builder"),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          color: Colors.blue,
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: _animatedC.animationC,
                builder: (context, widget) {
                  // value 0 -> 1 => convert 0 -> 1 -> 0
                  return Positioned(
                    top: 0,
                    right: 2 *
                        (0.5 - (0.5 - _animatedC.animationC.value).abs()) *
                        250,
                    child: widget!,
                  );
                },
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
