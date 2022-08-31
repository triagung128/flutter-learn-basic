import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class FadeTransitionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController fadeTransitionC = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  )..repeat(reverse: true);
}
