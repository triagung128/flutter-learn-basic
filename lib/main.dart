import 'package:flutter/material.dart';
import 'package:learn_flutter/latihan_widget_dasar/soal_24.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Soal24(),
    );
  }
}
