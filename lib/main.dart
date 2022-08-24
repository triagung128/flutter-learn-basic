import 'package:flutter/material.dart';
import 'package:learn_flutter/studi_kasus/pencarian_kota/pencarian_kota.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PencarianKota(),
    );
  }
}
