import 'package:flutter/material.dart';

class Soal17 extends StatelessWidget {
  const Soal17({
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
      body: GridView.builder(
        itemCount: 54,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) => Container(
          color: (index % 2) == 0 ? Colors.blue[900] : Colors.amber[300],
          child: Center(
            child: Text(
              "Hello",
              style: TextStyle(
                fontSize: 18,
                color: (index % 2) == 0 ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
