import 'package:flutter/material.dart';
import 'package:learn_flutter/belajar_navigation/halaman_pertama.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanPertama(),
    );
  }
}
