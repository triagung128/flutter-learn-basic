import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './box_transition_controller.dart';

class MateriBoxTransition extends StatelessWidget {
  MateriBoxTransition({Key? key}) : super(key: key);

  final BoxTransitionController _boxTransitionC =
      Get.put(BoxTransitionController());

  final DecorationTween myDecoration = DecorationTween(
    begin: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(50),
    ),
    end: const BoxDecoration(color: Colors.orange),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Box Transition"),
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: myDecoration.animate(_boxTransitionC.boxTransitionC),
          child: const SizedBox(
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
