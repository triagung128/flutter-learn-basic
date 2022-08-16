import 'package:flutter/material.dart';
import 'package:learn_flutter/belajar_navigation/halaman_kedua.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman Pertama",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Ini adalah halaman pertama",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HalamanKedua(),
                  ),
                );
              },
              child: const Text(
                "Next -->",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
