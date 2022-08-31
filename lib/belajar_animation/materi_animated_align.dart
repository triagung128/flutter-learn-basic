import 'package:flutter/material.dart';

class MateriAnimatedAlign extends StatefulWidget {
  const MateriAnimatedAlign({Key? key}) : super(key: key);

  @override
  State<MateriAnimatedAlign> createState() => _MateriAnimatedAlignState();
}

class _MateriAnimatedAlignState extends State<MateriAnimatedAlign> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: AnimatedAlign(
              duration: const Duration(seconds: 2),
              alignment:
                  (_selected == false) ? Alignment.center : Alignment.topLeft,
              child: const Text("HALLO"),
            ),
          ),
        ),
      ),
    );
  }
}
