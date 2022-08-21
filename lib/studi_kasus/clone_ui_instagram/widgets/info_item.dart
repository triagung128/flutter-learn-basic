import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({
    Key? key,
    required this.value,
    required this.text,
  }) : super(key: key);

  final String value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
