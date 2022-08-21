import 'package:flutter/material.dart';
import 'package:learn_flutter/studi_kasus/clone_ui_instagram/widgets/info_item.dart';
import 'package:learn_flutter/studi_kasus/clone_ui_instagram/widgets/profile_picture.dart';
import 'package:learn_flutter/studi_kasus/clone_ui_instagram/widgets/story_item.dart';
import 'package:learn_flutter/studi_kasus/clone_ui_instagram/widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            Text(
              "triiagunggg",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              children: [
                const ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      InfoItem(
                        value: "99",
                        text: "Postingan",
                      ),
                      InfoItem(
                        value: "999",
                        text: "Pengikut",
                      ),
                      InfoItem(
                        value: "999",
                        text: "Mengikuti",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Tri Agung",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                RichText(
                  text: const TextSpan(
                    text:
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "#hastag",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Link goes here",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  StoryItem(
                    title: "Story 1",
                  ),
                  StoryItem(
                    title: "Story 2",
                  ),
                  StoryItem(
                    title: "Story 3",
                  ),
                  StoryItem(
                    title: "Story 4",
                  ),
                  StoryItem(
                    title: "Story 5",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              TabItem(
                active: true,
                icon: Icons.grid_on_outlined,
              ),
              TabItem(
                active: false,
                icon: Icons.person_pin_outlined,
              ),
            ],
          ),
          GridView.builder(
            // shrinkWrap: true && physics: NeverScrollableScrollPhysics()
            /* Digunakan untuk menonaktifkan scroll pada grid view, 
                yang hanya bisa discroll adalah listview */
            // Solusi untuk menangani grid view di dalam list view
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 99,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/536/354",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_filter_outlined,
            ),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
