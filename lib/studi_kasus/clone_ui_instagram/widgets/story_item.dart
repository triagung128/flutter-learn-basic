import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 67,
                height: 67,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://picsum.photos/536/354",
                    ),
                  ),
                  border: Border.all(
                    width: 4,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
