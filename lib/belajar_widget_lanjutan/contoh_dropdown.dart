import 'package:flutter/material.dart';

class ContohDropdown extends StatefulWidget {
  const ContohDropdown({Key? key}) : super(key: key);

  @override
  State<ContohDropdown> createState() => _ContohDropdownState();
}

class _ContohDropdownState extends State<ContohDropdown> {
  final List data = [
    {
      "id": 1,
      "nama_daerah": "Jakarta",
    },
    {
      "id": 2,
      "nama_daerah": "Bogor",
    },
    {
      "id": 3,
      "nama_daerah": "Bandung",
    },
    {
      "id": 4,
      "nama_daerah": "Sukabumi",
    },
    {
      "id": 5,
      "nama_daerah": "Malang",
    },
  ];

  late int idDaerah;

  @override
  void initState() {
    super.initState();

    idDaerah = data[0]["id"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dropdown",
        ),
      ),
      body: Center(
        child: DropdownButton<int>(
          value: idDaerah,
          hint: const Text("Pilih daerah :"),
          items: data
              .map(
                (item) => DropdownMenuItem(
                  value: item["id"] as int,
                  child: Text(item["nama_daerah"]),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              idDaerah = value!;
            });
          },
        ),
      ),
    );
  }
}
