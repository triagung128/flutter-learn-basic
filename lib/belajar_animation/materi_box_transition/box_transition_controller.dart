import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class BoxTransitionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController boxTransitionC = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(reverse: true);
}
