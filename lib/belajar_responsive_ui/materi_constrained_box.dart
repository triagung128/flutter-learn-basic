import 'package:flutter/material.dart';

class MateriConstrainedBox extends StatelessWidget {
  const MateriConstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Constrained Box"),
      ),
      // ConstrainedBox() => berfungsi untuk mengatur lebar dan tinggi
      // pada childnya
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 100,
          maxHeight: 120,
          minWidth: 150,
          maxWidth: 170,
        ),
        child: Container(
          height: 1500,
          color: Colors.red,
          child: const Center(
            child: Text(
              "Hallooo",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
