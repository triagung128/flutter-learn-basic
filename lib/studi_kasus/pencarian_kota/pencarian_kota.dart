import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learn_flutter/studi_kasus/pencarian_kota/models/provinsi.dart';

import 'models/kota.dart';

class PencarianKota extends StatefulWidget {
  const PencarianKota({Key? key}) : super(key: key);

  @override
  State<PencarianKota> createState() => _PencarianKotaState();
}

class _PencarianKotaState extends State<PencarianKota> {
  final String _apiKey =
      "dd6b6529f8ebcca69d79452f143ada3264f33c9868b467ff9e234b45dafbd7c5";

  String? _idProvinsi;
  String? _idProvinsiTemp;

  Provinsi? _provinsi;
  Kota? _kota;

  bool _clickButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pencarian Kota"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          DropdownSearch<Provinsi>(
            onChanged: (value) {
              _provinsi = value;
              setState(() {
                _idProvinsi = value?.id;

                if (_idProvinsi != _idProvinsiTemp) {
                  _kota = null;
                  _clickButton = false;
                }
              });
            },
            popupProps: PopupProps.dialog(
              itemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.name),
              ),
              showSearchBox: true,
            ),
            dropdownBuilder: (context, selectedItem) => Text(
              selectedItem?.name ?? "Pilih Provinsi",
            ),
            asyncItems: (String filter) async {
              var response = await http.get(
                Uri.parse(
                  "https://api.binderbyte.com/wilayah/provinsi?api_key=$_apiKey",
                ),
              );

              if (response.statusCode != 200) {
                return [];
              }

              List getAllProvinsi =
                  (json.decode(response.body) as Map<String, dynamic>)["value"];
              List<Provinsi> allProvinsi = [];
              for (var element in getAllProvinsi) {
                allProvinsi.add(
                  Provinsi(
                    id: element["id"],
                    name: element["name"],
                  ),
                );
              }

              return allProvinsi;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          if (_idProvinsi != null)
            DropdownSearch<Kota>(
              onChanged: (value) {
                _kota = value;
                setState(() {
                  _idProvinsiTemp = _idProvinsi;
                  _clickButton = false;
                });
              },
              popupProps: PopupProps.dialog(
                itemBuilder: (context, item, isSelected) => ListTile(
                  title: Text(item.name),
                ),
                showSearchBox: true,
              ),
              dropdownBuilder: (context, selectedItem) {
                if (selectedItem != null && _kota != null) {
                  return Text(selectedItem.name);
                } else {
                  return const Text("Pilih Kota/Kabupaten");
                }
              },
              asyncItems: (String filter) async {
                var response = await http.get(
                  Uri.parse(
                    "https://api.binderbyte.com/wilayah/kabupaten?api_key=$_apiKey&id_provinsi=$_idProvinsi",
                  ),
                );

                if (response.statusCode != 200) {
                  return [];
                }

                List getAllKota = (json.decode(response.body)
                    as Map<String, dynamic>)["value"];
                List<Kota> allKota = [];
                for (var element in getAllKota) {
                  allKota.add(
                    Kota(
                      id: element["id"],
                      idProvinsi: element["id_provinsi"],
                      name: element["name"],
                    ),
                  );
                }

                return allKota;
              },
            ),
          const SizedBox(
            height: 20,
          ),
          if ((_provinsi != null) && (_kota != null))
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _clickButton = true;
                });
              },
              child: const Text("Simpan Data"),
            ),
          const SizedBox(
            height: 20,
          ),
          if (_clickButton)
            Text(
              "Id_Provinsi : ${_provinsi?.id}, Provinsi : ${_provinsi?.name}\nId_Kota : ${_kota?.id}, Kota : ${_kota?.name}",
            ),
        ],
      ),
    );
  }
}
