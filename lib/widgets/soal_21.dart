import 'package:flutter/material.dart';

class Soal21 extends StatelessWidget {
  const Soal21({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const FlutterLogo(),
        title: const Text(
          "Latihan Flutter Basic",
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Klik More");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 220,
              height: 220,
              color: Colors.green,
            ),
            Container(
              width: 190,
              height: 190,
              color: Colors.red,
            ),
            Container(
              width: 160,
              height: 160,
              color: Colors.purple,
            ),
            Container(
              width: 130,
              height: 130,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue[900],
            ),
          ],
        ),
      ),
    );
  }
}
