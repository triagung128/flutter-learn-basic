import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class AnimatedController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationC = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat();
}
