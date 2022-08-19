import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpDelete extends StatefulWidget {
  const HttpDelete({Key? key}) : super(key: key);

  @override
  State<HttpDelete> createState() => _HttpDeleteState();
}

class _HttpDeleteState extends State<HttpDelete> {
  String _data = "No Data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HTTP DELETE",
        ),
        actions: [
          IconButton(
            onPressed: () async {
              var response = await http.get(
                Uri.parse(
                  "https://reqres.in/api/users/2",
                ),
              );

              if (response.statusCode == 200) {
                Map<String, dynamic> json = jsonDecode(response.body);
                setState(() {
                  _data =
                      "Name : ${json['data']['first_name']} ${json['data']['last_name']}";
                });
              } else {
                _data = "failed to retrieve data";
              }
            },
            icon: const Icon(
              Icons.refresh,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Text(_data),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    var response = await http.delete(
                      Uri.parse(
                        "https://reqres.in/api/users/2",
                      ),
                    );

                    if (response.statusCode == 204) {
                      setState(() {
                        _data = "successfully deleted data";
                      });
                    } else {
                      setState(() {
                        _data = "failed to delete data";
                      });
                    }
                  },
                  child: const Text(
                    "DELETE",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
