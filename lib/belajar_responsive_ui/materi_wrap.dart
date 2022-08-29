import 'package:flutter/material.dart';

class MateriWrap extends StatelessWidget {
  const MateriWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap"),
      ),
      // Wrap() => berfungsi untuk menghindari terjadinya overflow
      body: Wrap(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 30,
            width: 60,
            color: Colors.brown,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 30,
            width: 60,
            color: Colors.brown,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 30,
            width: 60,
            color: Colors.brown,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 30,
            width: 60,
            color: Colors.brown,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 30,
            width: 60,
            color: Colors.brown,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 30,
            width: 60,
            color: Colors.brown,
          ),
        ],
      ),
    );
  }
}
