import 'package:flutter/material.dart';

class MateriAnimatedPositioned extends StatefulWidget {
  const MateriAnimatedPositioned({Key? key}) : super(key: key);

  @override
  State<MateriAnimatedPositioned> createState() =>
      _MateriAnimatedPositionedState();
}

class _MateriAnimatedPositionedState extends State<MateriAnimatedPositioned> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Positioned"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: Container(
            height: 500,
            width: 300,
            color: Colors.deepOrangeAccent,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(seconds: 2),
                  top: 0,
                  left: (_selected == false) ? 0 : 250,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(seconds: 2),
                  top: 50,
                  right: (_selected == false) ? 0 : 250,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
