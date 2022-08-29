import 'package:flutter/material.dart';

class MateriMediaQuery extends StatelessWidget {
  const MateriMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQuery() => berfungsi untuk mendapatkan komponen device
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    double paddingTopDevice = MediaQuery.of(context).padding.top;

    AppBar appBar() {
      return AppBar(
        title: const Text("Media Query"),
      );
    }

    // Menghitung height body
    double heightBody =
        heightDevice - appBar().preferredSize.height - paddingTopDevice;

    return Scaffold(
      appBar: appBar(),
      body: SizedBox(
        height: heightBody,
        width: widthDevice,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: heightBody * 0.5,
            ),
            Container(
              height: heightBody * 0.5,
              width: widthDevice * 0.5,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
