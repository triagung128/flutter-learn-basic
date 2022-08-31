import 'package:flutter/material.dart';

class MateriAnimatedOpacity extends StatefulWidget {
  const MateriAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<MateriAnimatedOpacity> createState() => _MateriAnimatedOpacityState();
}

class _MateriAnimatedOpacityState extends State<MateriAnimatedOpacity> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: AnimatedOpacity(
            opacity: (_selected == false) ? 1 : 0.5,
            duration: const Duration(seconds: 2),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
