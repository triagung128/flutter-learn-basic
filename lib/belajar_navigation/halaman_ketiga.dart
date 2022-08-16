import 'package:flutter/material.dart';

class HalamanKetiga extends StatelessWidget {
  const HalamanKetiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Halaman Ketiga",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Ini adalah halaman ketiga",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "<-- Back",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
