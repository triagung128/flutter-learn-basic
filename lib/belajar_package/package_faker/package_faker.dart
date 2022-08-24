import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PackageFaker extends StatefulWidget {
  const PackageFaker({Key? key}) : super(key: key);

  @override
  State<PackageFaker> createState() => _PackageFakerState();
}

class _PackageFakerState extends State<PackageFaker> {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faker"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              backgroundImage: NetworkImage(
                faker.image.image(
                  height: 300,
                  width: 300,
                  keywords: ['people'],
                  random: true,
                ),
              ),
            ),
            title: Text(faker.person.name()),
            subtitle: Text(faker.internet.email()),
          );
        },
      ),
    );
  }
}
