import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learn_flutter/belajar_future_builder/models/user.dart';
import 'package:http/http.dart' as http;

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  final List<User> _users = [];

  Future getAllUsers() async {
    try {
      var response = await http.get(
        Uri.parse(
          "https://reqres.in/api/users?page=1",
        ),
      );

      List data = (json.decode(response.body) as Map<String, dynamic>)["data"];
      debugPrint(data.toString());
      _users.clear();
      for (var item in data) {
        _users.add(User.fromJson(item));
      }
    } catch (e) {
      debugPrint("Terjadi Kesalahan");
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Future Builder",
        ),
      ),
      body: FutureBuilder(
        future: getAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text(
                "Loading....",
              ),
            );
          } else {
            if (_users.isEmpty) {
              return const Center(
                child: Text(
                  "Data Kosong",
                ),
              );
            } else {
              return ListView.builder(
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      backgroundImage: NetworkImage(
                        _users[index].avatar,
                      ),
                    ),
                    title: Text(
                      "${_users[index].firstName} ${_users[index].lastName}",
                    ),
                    subtitle: Text(
                      _users[index].email,
                    ),
                  );
                },
              );
            }
          }
        },
      ),
    );
  }
}
