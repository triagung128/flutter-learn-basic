import 'package:flutter/material.dart';

class MateriExpanded extends StatelessWidget {
  const MateriExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded"),
      ),
      body: Row(
        children: [
          // Expanded() => berfungsi untuk memberikan lebar atau tinggi
          // secara otomatis sesuai dengan ruang yang tersedia
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Nama Orang"),
              tileColor: Colors.amberAccent,
            ),
          ),
          Container(
            width: 75,
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
