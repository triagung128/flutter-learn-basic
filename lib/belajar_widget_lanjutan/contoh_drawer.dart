import 'package:flutter/material.dart';

class ContohDrawer extends StatelessWidget {
  const ContohDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drawer",
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              height: 150,
              color: Colors.blueAccent,
              child: const Text(
                "Dashboard Menu",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              // ListView tidak bisa berada di dalam column langsung
              // Harus berada di dalam container atau expanded
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home,
                    ),
                    title: const Text(
                      "Home",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
