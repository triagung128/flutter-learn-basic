import 'package:flutter/material.dart';

class MateriLayoutBuilder extends StatelessWidget {
  const MateriLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Builder"),
      ),
      body: Center(
        child: Container(
          width: widthDevice * 0.7,
          height: heightDevice * 0.2,
          decoration: BoxDecoration(
            border: Border.all(width: 1.0),
          ),
          // LayoutBuilder() => berfungsi untuk mendapatkan
          // lebar dan tinggi parentnya
          child: LayoutBuilder(builder: (context, constraint) {
            double widthParent = constraint.maxWidth;
            double heightParent = constraint.maxHeight;
            return Stack(
              children: [
                Container(
                  width: widthParent,
                  height: heightParent * 0.5,
                  color: Colors.red,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
