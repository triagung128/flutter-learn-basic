import 'package:flutter/material.dart';

class ContohSnackbar extends StatelessWidget {
  const ContohSnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Snackbar",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Contoh menampilkan snackbar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                // content -> untuk menampilkan informasi pada snackbar
                content: const Text(
                  "Hapus data kontak berhasil",
                ),
                // action -> untuk memberikan aksi pada snackbar
                action: SnackBarAction(
                  label: "BATAL",
                  onPressed: () {},
                ),
                // duration -> menentukan durasi menampilkan snackbar
                duration: const Duration(
                  seconds: 2,
                ),
                // margin -> untuk memberikan margin pada snackbar
                margin: const EdgeInsets.all(20),
                // behavior -> untuk menentukan perilaku pada snackbar
                behavior: SnackBarBehavior.floating,
                // shape -> untuk kostumisasi bentuk snackbar
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          },
          child: const Text(
            "Tampilkan Snackbar",
          ),
        ),
      ),
    );
  }
}
