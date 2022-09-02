import 'dart:math';

import 'package:flutter/material.dart';

class BelajarSliverWidget extends StatelessWidget {
  const BelajarSliverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverToBoxAdapter(
          //   child: Container(
          //     height: 200,
          //     color: Colors.amber,
          //   ),
          // ),
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            leading: const Icon(Icons.android),
            centerTitle: true,
            title: const Text("Sliver App Bar"),
            flexibleSpace: const Center(
              child: FlutterLogo(
                size: 200,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          // SliverGrid.count(
          //   crossAxisCount: 3,
          //   children: List.generate(
          //     12,
          //     (index) => Container(
          //       color: Color.fromARGB(
          //         255,
          //         Random().nextInt(256),
          //         Random().nextInt(256),
          //         Random().nextInt(256),
          //       ),
          //     ),
          //   ),
          // ),
          SliverGrid.extent(
            maxCrossAxisExtent: 150,
            children: List.generate(
              12,
              (index) => Container(
                color: Color.fromARGB(
                  255,
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MySliverPersistentHeaderDelegate(
              title: "Menu Makanan",
              idImage: "1021",
              minExtent: 100,
              maxExtent: 200,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 200,
                  color: Color.fromARGB(
                    255,
                    Random().nextInt(256),
                    Random().nextInt(256),
                    Random().nextInt(256),
                  ),
                  child: Center(
                    child: Text(
                      "Kotak ${index + 1}",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MySliverPersistentHeaderDelegate(
              title: "Menu Minuman",
              idImage: "100",
              minExtent: 100,
              maxExtent: 200,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 200,
                  color: Color.fromARGB(
                    255,
                    Random().nextInt(256),
                    Random().nextInt(256),
                    Random().nextInt(256),
                  ),
                  child: Center(
                    child: Text(
                      "Kotak ${index + 1}",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate({
    required this.title,
    required this.idImage,
    required this.maxExtent,
    required this.minExtent,
  });

  String title;
  String idImage;

  @override
  double maxExtent;

  @override
  double minExtent;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.network(
            "https://picsum.photos/id/$idImage/500/500",
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
