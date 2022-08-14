import 'package:flutter/material.dart';

class Soal6 extends StatelessWidget {
  const Soal6({
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
        // Bisa dibungkus dengan ClipOval
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(250),
          ),
          child: const Center(
            child: Text(
              "Hello",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
