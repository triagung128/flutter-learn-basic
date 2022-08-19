import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpGet extends StatefulWidget {
  const HttpGet({Key? key}) : super(key: key);

  @override
  State<HttpGet> createState() => _HttpGetState();
}

class _HttpGetState extends State<HttpGet> {
  late String _data;
  late String _status;

  @override
  void initState() {
    super.initState();

    _data = "Belum ada data";
    _status = "-";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HTTP GET",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _data,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () async {
                var response = await http.get(
                  Uri.parse(
                    "https://reqres.in/api/users/${Random().nextInt(10)}",
                  ),
                );

                if (response.statusCode == 200) {
                  debugPrint("BERHASIL MENGAMBIL DATA");
                  Map<String, dynamic> json = jsonDecode(response.body);

                  String email = json["data"]["email"];
                  String name =
                      "${json["data"]["first_name"]} ${json["data"]["last_name"]}";

                  setState(() {
                    _status = response.statusCode.toString();
                    _data = "EMAIL : $email\n NAME : $name";
                  });
                } else {
                  debugPrint("GAGAL MENGAMBIL DATA");

                  setState(() {
                    _data = "Tidak ada data";
                    _status = response.statusCode.toString();
                  });
                }
              },
              child: const Text(
                "GET DATA",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Status Code : $_status"),
          ],
        ),
      ),
    );
  }
}
