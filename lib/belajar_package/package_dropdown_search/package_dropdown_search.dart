import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class PackageDropdownSearch extends StatelessWidget {
  PackageDropdownSearch({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "country": "Indonesia",
    },
    {
      "id": 2,
      "country": "Malaysia",
    },
    {
      "id": 3,
      "country": "Singapura",
    },
    {
      "id": 4,
      "country": "Thailand",
    },
    {
      "id": 5,
      "country": "Vietnam",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: DropdownSearch<Map<String, dynamic>>(
          popupProps: PopupProps.menu(
            // showSelectedItems: true,
            showSearchBox: true,
            itemBuilder: (context, item, isSelected) => ListTile(
              title: Text(item["country"].toString()),
            ),
          ),
          clearButtonProps: const ClearButtonProps(
            icon: Icon(
              Icons.clear,
              color: Colors.black,
            ),
            isVisible: true,
          ),
          items: data,
          dropdownDecoratorProps: const DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              labelText: "Negara",
              hintText: "Pilih negara",
            ),
          ),
          dropdownBuilder: (context, selectedItem) => Text(
            selectedItem?["country"].toString() ?? "Pilih negara",
          ),
          onChanged: (value) => debugPrint(value?["id"].toString()),
        ),
      ),
    );
  }
}
