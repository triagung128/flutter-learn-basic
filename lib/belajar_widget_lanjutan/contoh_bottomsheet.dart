import 'package:flutter/material.dart';

class ContohBottomSheet extends StatelessWidget {
  const ContohBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showSnackbar(String text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "You choice picture",
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Sheet",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 250,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                          showSnackbar("You choice picture");
                        },
                        leading: const Icon(
                          Icons.photo,
                        ),
                        title: const Text(
                          "Picture",
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                          showSnackbar("You choice music");
                        },
                        leading: const Icon(
                          Icons.music_note,
                        ),
                        title: const Text(
                          "Music",
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                          showSnackbar("You choice video");
                        },
                        leading: const Icon(
                          Icons.video_file,
                        ),
                        title: const Text(
                          "Video",
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        leading: const Icon(
                          Icons.cancel,
                        ),
                        title: const Text(
                          "Cancel",
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: const Text(
            "Show Bottom Sheet",
          ),
        ),
      ),
    );
  }
}
