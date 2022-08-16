import 'package:flutter/material.dart';

// Contoh Penggunaan TabBar dengan DefaultTabController
// class ContohTabBar extends StatelessWidget {
//   const ContohTabBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: const Text(
//             "Whatsapp",
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.search,
//               ),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.more_vert,
//               ),
//             ),
//           ],
//           bottom: const TabBar(
//             indicatorColor: Colors.white,
//             labelColor: Colors.white,
//             tabs: [
//               SizedBox(
//                 child: Tab(
//                   icon: Icon(
//                     Icons.camera_alt,
//                     size: 20,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 child: Tab(
//                   text: "CHAT",
//                 ),
//               ),
//               SizedBox(
//                 child: Tab(
//                   text: "STATUS",
//                 ),
//               ),
//               SizedBox(
//                 child: Tab(
//                   text: "PANGGILAN",
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(
//               child: Text(
//                 "CAMERA",
//               ),
//             ),
//             Center(
//               child: Text(
//                 "CHAT",
//               ),
//             ),
//             Center(
//               child: Text(
//                 "STATUS",
//               ),
//             ),
//             Center(
//               child: Text(
//                 "PANGGILAN",
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Ini adalah contoh penggunaan TabBar dengan TabController
class ContohTabBar extends StatefulWidget {
  const ContohTabBar({Key? key}) : super(key: key);

  @override
  State<ContohTabBar> createState() => _ContohTabBarState();
}

class _ContohTabBarState extends State<ContohTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Whatsapp",
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.camera_alt,
              ),
            ),
            Tab(
              text: "CHAT",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "PANGGILAN",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Center(
            child: Text(
              "Halaman Kamera",
            ),
          ),
          Center(
            child: Text(
              "Halaman Chat",
            ),
          ),
          Center(
            child: Text(
              "Halaman Status",
            ),
          ),
          Center(
            child: Text(
              "Halaman Panggilan",
            ),
          ),
        ],
      ),
    );
  }
}
