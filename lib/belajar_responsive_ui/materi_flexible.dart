import 'package:flutter/material.dart';

class MateriFlexible extends StatelessWidget {
  const MateriFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible"),
      ),
      body: Row(
        children: [
          Column(
            children: [
              // Flexible() => berfungsi untuk memberikan lebar atau tinggi
              // secara otomatis sesuai childnya
              Flexible(
                flex: 1,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.red,
                  child: const TextFlex(flex: 1),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.amber,
                  child: const TextFlex(flex: 2),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.green,
                  child: const TextFlex(flex: 3),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.blue,
                  child: const TextFlex(flex: 1),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.blueGrey,
                  child: const TextFlex(flex: 1),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.blue,
                  child: const TextFlex(flex: 1),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.blueGrey,
                  child: const TextFlex(flex: 1),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.blue,
                  child: const TextFlex(flex: 1),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.blueGrey,
                  child: const TextFlex(flex: 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextFlex extends StatelessWidget {
  const TextFlex({
    Key? key,
    required this.flex,
  }) : super(key: key);

  final int flex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Flex $flex",
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
