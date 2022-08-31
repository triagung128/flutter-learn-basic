import 'package:flutter/material.dart';

class MateriAnimatedCrossFade extends StatefulWidget {
  const MateriAnimatedCrossFade({Key? key}) : super(key: key);

  @override
  State<MateriAnimatedCrossFade> createState() =>
      _MateriAnimatedCrossFadeState();
}

class _MateriAnimatedCrossFadeState extends State<MateriAnimatedCrossFade> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Cross Fade"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: AnimatedCrossFade(
            firstChild: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            secondChild: const FlutterLogo(
              size: 200,
            ),
            crossFadeState: (_selected == false)
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
