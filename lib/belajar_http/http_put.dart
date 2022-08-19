import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPut extends StatefulWidget {
  const HttpPut({Key? key}) : super(key: key);

  @override
  State<HttpPut> createState() => _HttpPutState();
}

class _HttpPutState extends State<HttpPut> {
  final String _url = "https://reqres.in/api/users/2";

  TextEditingController _nameC = TextEditingController();
  TextEditingController _jobC = TextEditingController();

  Future getUser() async {
    var response = await http.get(Uri.parse(_url));

    Map<String, dynamic> data =
        (json.decode(response.body) as Map<String, dynamic>)["data"];

    _nameC = TextEditingController(
      text: "${data["first_name"]} ${data["last_name"]}",
    );
    _jobC = TextEditingController(text: data["email"]);
  }

  @override
  Widget build(BuildContext context) {
    void showSnackbar({required bool success}) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: success
              ? const Text("successfully changed data")
              : const Text("failed to change data"),
          backgroundColor: success ? Colors.green : Colors.red,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HTTP PUT/PATCH",
        ),
      ),
      body: FutureBuilder(
          future: getUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text("LOADING..."),
              );
            } else {
              return ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  TextField(
                    controller: _nameC,
                    autocorrect: false,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _jobC,
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Job",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var response = await http.put(
                        Uri.parse(_url),
                        body: {
                          "name": _nameC.text,
                          "job": _jobC.text,
                        },
                      );

                      if (response.statusCode == 200) {
                        showSnackbar(success: true);
                      } else {
                        showSnackbar(success: false);
                      }
                    },
                    child: const Text(
                      "UPDATE",
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }
}
