import 'package:flutter/material.dart';

class Soal24 extends StatelessWidget {
  const Soal24({
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
      body: Column(
        children: [
          SizedBox(
            height: 90,
            child: ListView.builder(
              itemCount: 10,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 70,
                margin: const EdgeInsets.only(right: 10),
                color: (index % 2) == 0 ? Colors.blue[900] : Colors.amber[300],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: (index % 2) == 0
                          ? Colors.blue[900]
                          : Colors.amber[300],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hello ${index + 1}",
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
