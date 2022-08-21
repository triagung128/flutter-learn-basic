import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.amber,
              ],
            ),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        Container(
          height: 93,
          width: 93,
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
              width: 3,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
