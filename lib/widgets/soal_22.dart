import 'package:flutter/material.dart';

class Soal22 extends StatelessWidget {
  const Soal22({
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
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF0D47A1),
              width: 8,
            ),
            shape: BoxShape.circle,
            color: Colors.grey[300],
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://picsum.photos/seed/picsum/200/300",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
