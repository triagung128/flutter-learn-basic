import 'package:flutter/material.dart';

class ContohBottomNavigationBar extends StatefulWidget {
  const ContohBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<ContohBottomNavigationBar> createState() =>
      _ContohBottomNavigationBarState();
}

class _ContohBottomNavigationBarState extends State<ContohBottomNavigationBar> {
  final List showWidget = [
    const Center(
      child: Text(
        "HOME",
      ),
    ),
    const Center(
      child: Text(
        "CART",
      ),
    ),
    const Center(
      child: Text(
        "PROFILE",
      ),
    ),
  ];

  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Navigation Bar",
        ),
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
