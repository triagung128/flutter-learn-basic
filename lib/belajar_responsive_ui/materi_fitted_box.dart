import 'package:flutter/material.dart';

class MateriFittedBox extends StatelessWidget {
  const MateriFittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitted Box"),
      ),
      body: Container(
        height: 100,
        width: 200,
        color: Colors.amber,
        child: const Center(
          // FittedBox() => berfungsi untuk memberikan otomatis ukuran
          // pada childnya
          child: FittedBox(
            child: Text(
              "Hellooooooooooo",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
