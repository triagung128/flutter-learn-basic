import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPost extends StatelessWidget {
  HttpPost({Key? key}) : super(key: key);

  final TextEditingController _nameC = TextEditingController();
  final TextEditingController _jobC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void showSnackbar({required bool success}) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: success
              ? const Text("successfully save data")
              : const Text("failed to save data"),
          backgroundColor: success ? Colors.green : Colors.red,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HTTP POST",
        ),
      ),
      body: ListView(
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
              var response = await http.post(
                Uri.parse("https://reqres.in/api/users"),
                body: {
                  "name": _nameC.text,
                  "job": _jobC.text,
                },
              );

              if (response.statusCode == 201) {
                showSnackbar(success: true);
              } else {
                showSnackbar(success: false);
              }
            },
            child: const Text(
              "SAVE",
            ),
          ),
        ],
      ),
    );
  }
}
