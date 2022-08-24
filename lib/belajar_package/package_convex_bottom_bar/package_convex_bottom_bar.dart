import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class PackageConvexBottomBar extends StatefulWidget {
  const PackageConvexBottomBar({Key? key}) : super(key: key);

  @override
  State<PackageConvexBottomBar> createState() => _PackageConvexBottomBarState();
}

class _PackageConvexBottomBarState extends State<PackageConvexBottomBar> {
  final List<Widget> _widgets = [
    const Center(
      child: Text("PAGE 1"),
    ),
    const Center(
      child: Text("PAGE 2"),
    ),
    const Center(
      child: Text("PAGE 3"),
    ),
    const Center(
      child: Text("PAGE 4"),
    ),
    const Center(
      child: Text("PAGE 5"),
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Convex Bottom Bar"),
      ),
      body: _widgets[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(
            icon: Icons.home,
            title: 'Home',
          ),
          TabItem(
            icon: Icons.map,
            title: 'Discovery',
          ),
          TabItem(
            icon: Icons.add,
            title: 'Add',
          ),
          TabItem(
            icon: Icons.message,
            title: 'Message',
          ),
          TabItem(
            icon: Icons.people,
            title: 'Profile',
          ),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            _currentIndex = i;
          });
        },
      ),
    );
  }
}
