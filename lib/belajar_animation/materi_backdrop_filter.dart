import 'dart:ui';

import 'package:flutter/material.dart';

class MateriBackdropFilter extends StatelessWidget {
  const MateriBackdropFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Backdrop Filter"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.grey[300],
              child: const FlutterLogo(),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
