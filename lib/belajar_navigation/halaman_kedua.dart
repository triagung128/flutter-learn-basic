import 'package:flutter/material.dart';
import 'package:learn_flutter/belajar_navigation/halaman_ketiga.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Halaman Kedua",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Ini adalah halaman kedua",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "<-- Back",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HalamanKetiga(),
                      ),
                    );
                  },
                  child: const Text(
                    "Next -->",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
