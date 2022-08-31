import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './fade_transition_controller.dart';

class MateriFadeTransition extends StatelessWidget {
  MateriFadeTransition({Key? key}) : super(key: key);

  final FadeTransitionController _fadeTransitionC =
      Get.put(FadeTransitionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Box Transition"),
      ),
      body: Center(
        child: FadeTransition(
          opacity: CurvedAnimation(
            parent: _fadeTransitionC.fadeTransitionC,
            curve: Curves.easeInOut,
          ),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
