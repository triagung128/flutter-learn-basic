import 'package:flutter/material.dart';

class ContohDialog extends StatelessWidget {
  const ContohDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dialog",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showDialog() -> sebuah fungsi untuk menampilkan dialog
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                // shape -> digunakan untuk kostumisasi bentuk dialog
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // title -> untuk menampilkan title/judul pada dialog
                title: const Text(
                  "Judul dialog",
                ),
                // content -> untuk menampilkan content pada dialog
                content: const Text(
                  "Ini adalah bagian dari content dialog",
                ),
                /* action -> digunakan untuk memberikan action pada dialog
                            contohnya menggunakan button */
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "Oke",
                    ),
                  ),
                ],
              ),
            );
          },
          child: const Text(
            "Tampilkan Dialog",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
