import 'package:flutter/material.dart';

class MateriAnimatedContainer extends StatefulWidget {
  const MateriAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MateriAnimatedContainer> createState() =>
      _MateriAnimatedContainerState();
}

class _MateriAnimatedContainerState extends State<MateriAnimatedContainer> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.linear,
            width: (_selected == false) ? 200 : 250,
            height: (_selected == false) ? 200 : 150,
            color: (_selected == false) ? Colors.amber : Colors.blue,
          ),
        ),
      ),
    );
  }
}
